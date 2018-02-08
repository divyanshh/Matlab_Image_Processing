Im = imread('sphere5.jpg');

p = 2;
q = 2;


for i = 1:p*size(Im,1)
    for j = 1:q*size(Im,2)
        x = floor(i/p);
        y = floor(j/q);
        
        if(x < 1)
            x = 1;
        end
        
        if(y < 1)
            y = 1;
        end
        
        Im_scale(i,j,:) = Im(x,y,:);
    end
end
figure
imshow(Im)
figure
imshow(Im_scale)