%name, date
%polynomial of best fit

clear
clc

%declare variables
x=[0.5 0.9 1.7 3.3 4.1 4.9 6.5 7.3 7.7 8.5];
y=[1 2.5 1.9 2.3 2.5 2.2 1.9 1.3 1.2 1];

%find coefficients
coeffs=polyfit(x,y,4)

%evaluate poly at each x
%fitpoints=polyval(coeffs,x);

%plot
%plot(x,y,'r*',x,fitpoints,'-')

%use polyval on large number of x's

%create more x's (start,end,howmany)
xnew=linspace(min(x),max(x),200);

%get new y values
fitpoints=polyval(coeffs,xnew);

%plot
plot(x,y,'r*',xnew,fitpoints,'-')

%only necessary for polynomials

