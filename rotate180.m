i = imread('abc.jpg');

%Inversion
[r c d] = size(i);
f3 = zeros(r,c,d);
f3(1:r,:,:) = i(r:-1:1,:,:);

subplot(1,2,1),imshow(i)
subplot(1,2,2),imshow(uint8(f3))