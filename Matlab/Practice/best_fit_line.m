%find line from data points

clear
clc

x=[0 1 2 3 4]
y=[0.2 1.1 3.9 8.8 16.4];

%using polyfit
coeffs=polyfit(x,y,1);

%finding y values using line equation for fitted line
yfit=coeffs(1)*x+coeffs(2)

%plot original points and fitted line
plot(x,y,'r*')
hold on
plot(x,yfit,'-')
hold off

%use polyval to generate best fit y array
ynew=polyval(coeffs,x)

%if xi represents values of x we need to find y for
xi=[14 16];

%use polyval to get corresponding y
yi=polyval(coeffs,xi)

%show equation
gtext(['y=',num2str(coeffs(1)),'*x+',num2str(coeffs(2))])
    


    