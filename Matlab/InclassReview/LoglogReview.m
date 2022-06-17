%name,date
clear
clc

%define variables
x=[1 2 3 4 5 6 7];
y=[2 9.2 22.4 42.2 69 103 144.6];

%change variables to log form
ln_x=log(x);
ln_y=log(y);

plot(ln_x,ln_y,'r*')

%find line of best fit
coeffs=polyfit(ln_x,ln_y,1);