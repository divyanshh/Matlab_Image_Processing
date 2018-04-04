clc;

im = imread('sphere5.jpg');
red = im(:,:,1);
green = im(:,:,2);
blue = im(:,:,3);

subplot(2,2,1);imshow(im);title('original');
subplot(2,2,2);imshow(red);title('red');
subplot(2,2,3);imshow(green);title('green');
subplot(2,2,4);imshow(blue);title('blue');