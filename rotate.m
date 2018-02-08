Im = imread('abc.jpg');

[m,n,o] = size(Im);

Im_r = zeros(n,m,3);

for i = 1:m
    Im_r(i,:,3) = Im(:,i,3);
end

figure
imshow(Im_r)
figure
imshow(Im)