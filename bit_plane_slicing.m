clear;
clc;

i = imread('abc.jpg');
im = rgb2gray(i);
cd = double(im);
 
plane1 = mod(cd, 2);
plane2 = mod(floor(cd/2), 2);
plane3 = mod(floor(cd/4), 2);
plane4 = mod(floor(cd/8), 2);
plane5 = mod(floor(cd/16), 2);
plane6 = mod(floor(cd/32), 2);
plane7 = mod(floor(cd/64), 2);
plane8 = mod(floor(cd/128), 2);

subplot(2, 5, 1);
imshow(im);
title('Original Image');
subplot(2, 5, 2);
imshow(plane1);
title('Bit Plane 1');
subplot(2, 5, 3);
imshow(plane2);
title('Bit Plane 2');
subplot(2, 5, 4);
imshow(plane3);
title('Bit Plane 3');
subplot(2, 5, 5);
imshow(plane4);
title('Bit Plane 4');
subplot(2, 5, 6);
imshow(plane5);
title('Bit Plane 5');
subplot(2, 5, 7);
imshow(plane6);
title('Bit Plane 6');
subplot(2, 5, 8);
imshow(plane7);
title('Bit Plane 7');
subplot(2, 5, 9);
imshow(plane8);
title('Bit Plane 8');

compressed_img = 128*c8 + 64*c7 + 32*c6 + 16*c5;
subplot(2, 5, 10);
imshow(uint8(compressed_img));
title('Compressed Image');