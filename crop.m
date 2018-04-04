im = imread('abc.jpg');

a = size(im)

x1 = 50;
y1 = 50;
x2 = 100;
y2 = 100;

cr = im(x1:x2,y1:y2,:);

h1 = im;
for i = x1:x2
    for j = y1:y2
        h1(i,j,:) = im(i,j,:) - 100;
    end
end

subplot(1,3,1), imshow(im)
subplot(1,3,2), imshow(cr)
subplot(1,3,3), imshow(h1)