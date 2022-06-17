%semilog plotting

clear 
clc

x=[1:7];
y=[1.1 3 8 21.8 59.4 161.4 438.6];
plot(x,y,'r*')
semilogy(x,y,'r*')

pause


clear 
clc
x=[1 2 3 4 5 6 7];
y=[1.1 3.0 8.0 21.8 59.4 161.4 438.6];

%change y to ln_y for line fitting
ln_y=log(y)

%plot ln_y versus x
plot(x,ln_y,'r*')

%fit straight line through x and ln_y
coeff=polyfit(x,ln_y,1)