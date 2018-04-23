clc;

im = imread('abc.jpg');
red = zeros(size(im));
green = zeros(size(im));
blue = zeros(size(im));
red(:,:,1) = im(:,:,1);
green(:,:,2) = im(:,:,2);
blue(:,:,3) = im(:,:,3);

subplot(2,2,1);imshow(im);title('original');
subplot(2,2,2);imshow(red);title('red');
subplot(2,2,3);imshow(green);title('green');
subplot(2,2,4);imshow(blue);title('blue');