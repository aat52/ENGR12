%plotting example
clear
clc

x=[1:10];
y=[linspace(5,50,10)];

%plot x and y
plot(x,y)

plot(x,y,'g^')

%add labels and title
xlabel('X value')
ylabel('Y value')
title('Plotting Example')

%add text
text(5,10,'Adding text')
gtext('Adding moveable text')

Y='Y';
N='N';

new=input('Do you want to try using a data file?: (Y/N) ');

if new=='Y'
    filename='0';
    while exist(filename)==0
        filename=input('Data file: ','s');
    end
    
    data=load(filename);
    [rows,cols]=size(data);
    
    if rows==2
        x1=data(1,:);
        y1=data(2,:);
    elseif cols==2
        x1=data(:,1);
        y1=data(:,2);
    else
        disp('Error in data file.');
    end
    plot(x1,y1,'r*')
    
elseif new=='N'
    disp('See you again!')
end
    
    
    
    