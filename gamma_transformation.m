clear;

Im = imread('abc.jpg');

c = 1;

for i = 1:size(Im , 1)
    for j = 1:size(Im , 2)
        
        Im_gamma(i,j,1) = c * (double(Im(i,j,1)) ^ 1.2);
        Im_gamma(i,j,2) = c * (double(Im(i,j,2)) ^ 1.2);
        Im_gamma(i,j,3) = c * (double(Im(i,j,3)) ^ 1.2);
    
    end
end

subplot(1,2,1),imshow(Im)
subplot(1,2,2),imshow(uint8(Im_gamma))