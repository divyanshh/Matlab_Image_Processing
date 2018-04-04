Im = imread('abc.jpg');
m = size(Im,1);

for i = 1:size(Im,1)
    for j = 1:size(Im,2)
        col = m - i ;
        if(col < 1)
            col = 1;
        end
        Im_r(j,col,:) = Im(i,j,:);
    end
    
end

figure
imshow(Im)
figure
imshow(Im_r)