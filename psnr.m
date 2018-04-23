A = imread('sphere5.jpg');

r = size(A,1);
c = size(A,2);

x1 = r/4;
y1 = r/2;
x2 = c/4;
y2 = c/2;

I_crop = A(x1:x2,y1:y2,:);
I_crop2(x1:x2,y1:y2,:) = A(x1:x2,y1:y2,:) - 100;
imshow(I_crop2)

mse = 0;

for i = 1:r
    for j = 1:c
        x = I_crop(i,j) - A(i,j);
        mse = mse + x*x;
    end
end
mse = double(mse);
mn = r*c;
mse = double(mse/mn)
PSNR = 10*log10((255*255)/mse)
imshow(I_crop)