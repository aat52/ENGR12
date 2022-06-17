%best fit, equation, relative error, plot, r^2

clear
clc

x=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
y=[5, 23, 29, 46, 51, 57, 72, 75, 81, 95, 101];

%filter data
iend=length(x);
j=1;
for i=1:1:iend
    if x(i)>0 & y(i)>0
        x2(j)=x(i);
        y2(j)=y(i);
        j=j+1;
    end
end


%calculate best fit
coeff=polyfit(x2,y2,1);

%determines predicted y values 
yfit=polyval(coeff,x2);

%plot data with green x's, fitted line as a line
plot(x2,y2,'gx')
hold on
plot(x2,yfit,'g-');
hold off

%display equation 
gtext(['y= ',num2str(coeff(1)),' *x+ ',num2str(coeff(2)),'.']);

%determine max relative error, x location
abs_err=abs(y-yfit);
[max_err,x_loc]=max(abs_err);

%displays on plot and command window
gtext(['The maximum relative error is ', num2str(max_err),' at x= ', num2str(x_loc),'.']);
disp(['The maximum relative error is ', num2str(max_err),' at x= ', num2str(x_loc),'.']);

%calculate r^2
SSEmydata=sum((y-yfit).^2);
SSTmydata=sum((y-mean(y).^2));
rsquared=1-(SSEmydata/SSTmydata);
gtext(['The r^2 value is ',num2str(rsquared),'.']);
disp(['The r^2 value is ',num2str(rsquared),'.']);


%displays r^2 value on plot and command window