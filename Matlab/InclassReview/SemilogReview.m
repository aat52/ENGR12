%name,date
clear
clc

%define variables
x=[1 2 3 4 5 6 7];
y=[1.1 3 8 21.8 59.4 161.4 438.6];

%since no negatives, do not need to filter for zeroes or negatives

%get log(y)
ln_y=log(y)

plot(x,ln_y,'r*')

%find line of best fit
coeffs=polyfit(x,ln_y,1);
