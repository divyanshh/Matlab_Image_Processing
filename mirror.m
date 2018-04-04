i = imread('abc.jpg');

[r c d] = size(i);
f1 = zeros(r,c,d);
f1(:,1:c,:) = i(:,c:-1:1,:);

subplot(1,2,1),imshow(uint8(i))
subplot(1,2,2),imshow(uint8(f1))