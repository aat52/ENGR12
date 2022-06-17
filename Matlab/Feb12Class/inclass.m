%name, date
%find line of best fit
clear
clc

%declare variables
x=[0 1 2 3 4];
y=[0.2 1.1 3.9 8.8 16.4];

%use polyfit to find line
LineCoeffs=polyfit(x,y,1);

%find y values using line equation
%yfit=LineCoeffs(1)*x+LineCoeffs(2)

%plot original points and fitted line
%plot(x,y,'r*',x,yfit,'-')

%find y values using polyval
yfit=polyval(LineCoeffs,x);

%plot
plot(x,y,'r*',x,yfit,'-')

%calculate values for any given x_i
x_i=[14 16];
y_i=polyval(LineCoeffs,x_i)

