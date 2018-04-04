im1 = imread('sphere5.jpg');
im2 = imread('abc.jpg');

p = size(im1,1)/size(im2,1);
q = size(im1,2)/size(im2,2);

for i = 1:p*size(im2,1)
    for j = 1:q*size(im2,2)
        x = round(i/p);
        y = round(j/q);
        
        if(x < 1)
            x = 1;
        end
        
        if(y < 1)
            y = 1;
        end
        
        im_rescale(i,j,:) = im2(x,y,:);
    end
end

for i = 1:p*size(im2,1)
    for j = 1:q*size(im2,2)
        
        im_n(i,j,:) = im1(i,j,:) + im_rescale(i,j,:);
    end
end

figure
imshow(im_rescale)
figure
imshow(im1)
figure
imshow(im_n)