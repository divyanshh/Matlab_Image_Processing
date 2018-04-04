Im = imread('abc.jpg');
for i = 1:size(Im , 1)
    for j = 1:size(Im , 2)
        Im_cmp(i,j,1) = 255 - Im(i,j,1);
        Im_cmp(i,j,2) = 255 - Im(i,j,2);
        Im_cmp(i,j,3) = 255 - Im(i,j,3);
    end
end

subplot(1,2,1),imshow(Im)
subplot(1,2,2),imshow(Im_cmp)