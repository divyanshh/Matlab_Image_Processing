clc;

im = imread('sphere5.jpg');

for i = 1:size(im,1)
    for j = 1:size(im,2)
        im_2(i,j,1) = im(i,j,1) + 50;
        im_2(i,j,2) = im(i,j,2) + 50;
        im_2(i,j,3) = im(i,j,3) + 50;
    end
end

mse = 0;

for i = 1:size(im,1)
    for j = 1:size(im,2)
        e = im_2(i,j) - im(i,j);
        mse = mse + e*e;
    end
end

msed = double(mse);
a = double(255*255);
psnr = 10*log10(a/msed)

subplot(1,2,1);imshow(im);title('original image');
subplot(1,2,2);imshow(im_2);title('increased brightness image');