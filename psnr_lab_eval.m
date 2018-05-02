clc;

im = imread('sphere5.jpg');


for i = 1:size(im,1)
    for j = 1:size(im,2)
        im_gray(i,j) = 0.3*im(i,j,1) + 0.3*im(i,j,2) + 0.3*im(i,j,3);
    end
end

for i = 1:size(im,1)
    for j = 1:size(im,2)
        im_gray2(i,j) = im_gray(i,j) + 50;
    end
end

mse = 0;

for i = 1:size(im,1)
    for j = 1:size(im,2)
        err(i,j) = im_gray2(i,j) - im_gray(i,j);
        e = im_gray2(i,j) - im_gray(i,j);
        mse = mse + e*e;
    end
end

a = double(255*255);
psnr = 10*log10((a*(size(im,1)*size(im,2)))/double(mse))

subplot(2,2,1);imshow(im);title('original image');
subplot(2,2,2);imshow(im_gray);title('Grayscale image');
subplot(2,2,3);imshow(im_gray2);title('Grayscale image increased brightness');
subplot(2,2,4);imhist(err);title('Error Histogram');