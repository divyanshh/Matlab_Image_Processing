clear;
im = imread('abc.jpg');

for i = 2:size(im,1)-1
    for j = 2:size(im,2)-1
        
        im_prewitt(i,j,:) = (-1*im(i-1,j-1,:)) + (-1*im(i,j-1,:)) + (-1*im(i+1,j-1,:)) + ...
                          (1*im(i-1,j+1,:)) + (1*im(i,j-1,:)) + (1*im(i+1,j+1,:));
        
        im_sobel(i,j,:) = (-1*im(i-1,j-1,:)) + (-2*im(i,j-1,:)) + (-1*im(i+1,j-1,:)) + ...
                          (1*im(i-1,j+1,:)) + (2*im(i,j-1,:)) + (1*im(i+1,j+1,:));
                      
        median_array = [im(i-1,j-1,:) , im(i,j-1,:) , im(i+1,j-1,:) ...
            , im(i-1,j,:) , im(i,j,:) , im(i+1,j,:) ...
            , im(i-1,j+1,:) , im(i,j+1,:) , im(i+1,j+1,:)];
        
        im_median(i,j,:) = median(median_array);
        
        im_avg_wghtd(i,j,:) = (im(i-1,j-1,:) + 2*im(i,j-1,:) + im(i+1,j-1,:) + ...
             2*im(i-1,j,:) + 4*im(i,j,:) + 2*im(i+1,j,:) + ...
             im(i-1,j+1,:) + 2*im(i,j+1,:) + im(i+1,j+1,:))/16;
         
        im_mean(i,j,:) = (im(i-1,j-1,:) + im(i,j-1,:) + im(i+1,j-1,:) + ...
             im(i-1,j,:) + im(i,j,:) + im(i+1,j,:) + ...
             im(i-1,j+1,:) + im(i,j+1,:) + im(i+1,j+1,:))/9;
        
    end
end

subplot(2,3,1),imshow(im),title('original')
subplot(2,3,2),imshow(im_prewitt),title('prewitt')
subplot(2,3,3),imshow(im_sobel),title('sobel')
subplot(2,3,4),imshow(im_median),title('median')
subplot(2,3,5),imshow(im_avg_wghtd),title('average weighted')
subplot(2,3,6),imshow(im_mean),title('mean')