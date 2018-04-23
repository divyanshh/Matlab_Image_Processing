clear;
img=imread('sphere5.jpg');

fact1 = 4;
fact2 = 4 ;
for i=1:fact1*size(img,1)
    for j=1:fact2*size(img,2)
        x=floor(i/fact1);
        y=floor(j/fact2);
        if(x<1)
            x=1;
        end
        if(y<1)
            y=1;
        end
        sc_img(i,j,:) =img(x,y,:);
    end
end
figure
imshow(img)
figure
imshow(sc_img)