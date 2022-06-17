%names, date
%plotting data

clear
clc

%create x and y
x=[1:10];
y=[linspace(5,50,10)];

%plot x and y
plot(x,y)

%plot x and y with red stars
plot(x,y, 'r*')

%add labels and titles
xlabel('x value')
ylabel('y value')
title('My Plot')

%add text using 'text'
%you need (xloc,yloc, 'the text')
text(5,10, 'adding text')

