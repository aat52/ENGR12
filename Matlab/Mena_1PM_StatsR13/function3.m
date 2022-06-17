%Aron Griffin, Angela Tseng, Pragya Malhotra
%R13

%function 3
function function3(data)

%sort data
sorteddata=sort(data);

%user enter information
plottitle=input('Enter plot title: ','s');
xlab=input('Enter x label: ','s');
ylab=input('Enter y label: ','s');
username=input('Enter your name: ','s');

%subplots
subplot(1,3,1)
plot(sorteddata,'yo')
title(plottitle)
xlabel(xlab)
ylabel(ylab)

subplot(1,3,2)
imread('Pic.jpg');
imshow('Pic.jpg')

subplot(1,3,3)
hist(data)
title('Histogram of Data')
gtext(username)
