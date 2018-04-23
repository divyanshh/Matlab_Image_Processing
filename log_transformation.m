Im = imread('abc.jpg');
Im_gray = rgb2gray(Im);

c = input('enter the value of c');

for i = 1:size(Im , 1)
    for j = 1:size(Im , 2)
        
        r_col = double(Im(i,j));
        r_gray = double(Im_gray(i,j));

        Im_log_col(i,j) = c * log10(1 + r_col);
        Im_log_gray(i,j) = c * log10(1 + r_gray);
        
        Im_sub(i,j) = Im_log_col(i,j) - Im_log_gray(i,j);
    end
end

subplot(2,3,1),imshow(Im)
subplot(2,3,2),imshow(Im_log_col)
subplot(2,3,3),imshow(Im_gray)
subplot(2,3,4),imshow(Im_log_gray)
subplot(2,3,5),imshow(Im_sub)