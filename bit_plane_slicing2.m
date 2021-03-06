clc;
i =imread('abc.jpg');

im = rgb2gray(i);
row=size(im,1);
col=size(im,2);
s=zeros(row,col,8);
for k=1:8
    for i=1:row
        for j=1:col
            s(i,j,k) = bitget(im(i,j),k);
        end;
    end;
end;

    b = s(:,:,1)*(2^0)+s(:,:,2)*(2^1)+s(:,:,3)*(2^2)+s(:,:,4)*(2^3)+s(:,:,5)*(2^4)+ ...
                            s(:,:,6)*(2^5)+s(:,:,7)*(2^6)+s(:,:,8)*(2^7);

subplot(2,5,1);imshow(im);title('original');
subplot(2,5,2);imshow(s(:,:,1));title('plane1');
subplot(2,5,3);imshow(s(:,:,2));title('plane2');
subplot(2,5,4);imshow(s(:,:,3));title('plane3');
subplot(2,5,5);imshow(s(:,:,4));title('plane4');
subplot(2,5,6);imshow(s(:,:,5));title('plane5');
subplot(2,5,7);imshow(s(:,:,6));title('plane6');
subplot(2,5,8);imshow(s(:,:,7));title('plane7');
subplot(2,5,9);imshow(s(:,:,8));title('plane8');
subplot(2,5,10);imshow(uint8(b));title('reformed');