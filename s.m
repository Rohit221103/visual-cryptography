A=imread("C:\Users\rohit\arm\image-processin\images\images\car.jpg");
size(A)
imshow(A)
gs = im2gray(A);
bi=im2bw(gs,0.5);
imshow(bi)
x=size(bi)
x1=x(1,1)
x2=x(1,2)*2
shair1=zeros(x1,x2);
shair2=zeros(x1,x2);
white_encoding=[0,1,1,0;1,0,0,1]
black_encoding=[0,1,0,1;1,0,1,0]
size(shair1)
x3=x(1,1)
x4=x(1,2)
for i=1:x3   
    for j=0:x4-1
        z=randi([1,2]);
        if bi(i,j+1)==0 %black pixel
            shair1(i,(2*j)+1:(2*j)+2)=black_encoding(z,1:2);
            shair2(i,(2*j)+1:(2*j)+2)=black_encoding(z,3:4);
        else 
            shair1(i,(2*j)+1:(2*j)+2)=white_encoding(z,1:2);
            shair2(i,(2*j)+1:(2*j)+2)=white_encoding(z,3:4);
        end
    end
end
isequal(shair1,shair2)
imshow(shair1)
imshow(shair2)
imshow(xor(shair1,shair2))
