%filter out bad data(negative numbers and zeros)

clear
clc

x=[1:7];
y=[2 9.2 22.4 42.2 69 103 144.6];

iend=length(x);
j=1;
for i=1:1:iend
    if x(i)>0 & y(i)>0
        x2(j)=x(i);
        y2(j)=y(i);
        j=j+1;
    end
end

ln_x2=log(x2);
ln_y2=log(y2);

subplot(2,1,1)
semicoeff=polyfit(x2,ln_y2,1)

subplot(2,1,2)
loglogcoeff=polyfit(ln_x2,ln_y2,1)