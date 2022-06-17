%polyfit review

clear
clc

%get data
filename=input('Which file?','s');

%get x and y
data=load(filename);
j=1;
[rows,cols]=size(data);
    if rows==2
        x=data(1,:);
        y=data(2,:);
    elseif cols==2
        x=data(:,1);
        y=data(:,2);
    end

%find coefficients
coeffs=polyfit(x,y,2)

%polyval gives y value for x given
ypolyval=polyval(coeffs,3)

%to plot polynomials, want a smooth line
xnew=linspace(min(x),max(x),200);

%now need 200 y points
yfitpoints=polyval(coeffs,xnew);

%plot
plot(x,y,'r*');
plot(xnew,yfitpoints);

%get y value for x provided by user
x_user=input('Provide an x: ');
y_userpolyval=polyval(coeffs,x_user)