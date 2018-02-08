Im = imread('sphere5.jpg');
for i = 1:size(Im , 1)
    for j = 1:size(Im , 2)
        Im_gray(i,j) = 0.5 * Im (i , j , 1) + 0.5 * Im (i , j , 2) + 0.5 * Im (i , j , 3);
    end
end

for i = 1:size(Im_gray,1)
    for j = 1:size(Im_gray,2)
        if Im_gray(i,j) > 100
            Im_bw(i,j) = 1;
        else
            Im_bw(i,j) = 0;
        end
    end
end

subplot(1,3,1),imshow(Im)
subplot(1,3,2),imshow(Im_gray)
subplot(1,3,3),imshow(Im_bw)
Inline image 1