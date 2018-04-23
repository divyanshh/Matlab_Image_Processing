clear;
a=imread('sphere5.jpg');
%figure,imshow(a)
d = imresize(a,[50 50]);
figure,imshow(d);

a=double(d);
b=a;
%figure,imshow(a)
[r c d]=size(a);
for i=1:r
    for j=1:c
        if i==1
            g=sqrt(1/r);
        else
            g=sqrt(2/r);
        end
        if j==1
            h=sqrt(1/c);
        else
            h=sqrt(2/c);
        end
        sum=0;
        for k=1:r
            for l=1:c
                sum=sum+(a(k,l,:)*cos((((2*(k-1))+1)*pi*(i-1))/2*r)*cos((((2*(l-1))+1)*pi*(j-1))/2*c) );
            end
        end
        b(i,j,:)=g*h*sum;
    end
end

 figure,imshow(b)
 imwrite(b , 'dct.jpg')
