i = imread('abc.jpg');

%Transpose
i = imread('abc.jpg');
[r c d] = size(i);
f2 = zeros(c,r,d);
f2(:,:,1) = i(:,:,1)';
f2(:,:,2) = i(:,:,2)';
f2(:,:,3) = i(:,:,3)';

subplot(1,2,1),imshow(i)
subplot(1,2,2),imshow(uint8(f2))