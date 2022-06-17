%practice polyfit
clear
clc
%load data and extract x and y
filename='0';
while exist(filename)==0
    filename=input('Enter file name: ','s');
end

data=load(filename);

[rows,cols]=size(data);
if rows==2
    x=data(1,:);
    y=data(2,:);
elseif cols==2
    x=data(:,1);
    y=data(:,2);
else
    disp('Error in data.');
end

%use polyfit to determine line of best fit
coeffs=polyfit(x,y,1);

%generate best fit line
yfit=coeffs(1)*x+coeffs(2);

gtext(['y=',num2str(coeffs(1)),'*x+',num2str(coeffs(2))])

%plot data and best fit on same graph, use menu to ask user what color

color=menu('What color would you like?','red','green','blue');

switch color
    case 1
        plot(x,y,'r*')
        hold on
        plot(x,yfit,'r-')
        
    case 2
        plot(x,y,'g*')
        hold on
        plot(x,yfit,'g-')
        
    case 3
        plot(x,y,'b*')
        hold on
        plot(x,yfit,'b-')
end

%add a title
title('Title of Plot')

%use gtext to add name
gtext('Name')

%use polyval to generate numbers 
xi=[4 4.5];
yi=polyval(coeffs,xi);

plot(xi,yi,'yo')
hold off

