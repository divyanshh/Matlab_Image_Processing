im = imread('abc.jpg');

for i = 1:size(im,1)
    for j = 1:size(im,2)
        
        image(i,j,:) = im(i,j,:) + 50;
    end
end

subplot(1,2,1),imshow(im)
subplot(1,2,2),imshow(image)