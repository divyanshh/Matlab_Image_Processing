clc;

str = input('Enter the word to be encoded','s');
len = size(str);
le=len(2);

count = [];

for i=1:le-1
    count(i) = 1;
    for j=i+1:le
        if str(i) == str(j)
            count(i) = count(i) + 1;
            str(j) = 0; % nulling the value
        end
    end
end

if(str(le)~=0)
    count(le)=1; % last will not be compared
end

j=1;
for i=1:le
    if(str(i)~=0)
        new(j) = str(i);
        p(j) = count(i)/le;
        if(j>1)
            ar(j) = ar(j-1)+p(j); %calculating upper bound
        else
            ar(j) = p(j);
        end
        disp(['Probability for ',str(i),' is ',num2str(p(j))]);
     j=j+1;
    end
end
   
newlen = size(new,2);
l=[];
u=[];
l(1)=0;
u(1)=ar(1);

for i=2:le
    for j=1:newlen
        if(arith(i)==new(j))
            l(i)=l(i-1)+(u(i-1)-l(i-1))*(ar(j)-p(j));
            u(i)=l(i-1)+(u(i-1)-l(i-1))*ar(j);
        end
    end
end

tag=(l(i)+u(i))/2;
disp(['The tag is ',num2str(tag)]);