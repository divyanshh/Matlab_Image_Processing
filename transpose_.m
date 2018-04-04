i = imread('abc.jpg');
imshow(i)

%Inversion
i = imread('abc.jpg');
[r c d] = size(i);
f3 = zeros(r,c,d);
f3(1:r,:,:) = i(r:-1:1,:,:);

ginput(1)

imshow(uint8(f3));

%Transpose
f2 = zeros(c,r,d);
f2(:,:,1) = i(:,:,1)';
f2(:,:,2) = i(:,:,2)';
f2(:,:,3) = i(:,:,3)';

ginput(1)

imshow(uint8(f2))