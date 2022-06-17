%name, date
%using a menu

%create x and y
x=[1:10];
y=linspace(5,50,10);

%create menu
datacolor=menu('What color?','yellow','magenta','red');

switch datacolor
    case 1
        plot(x,y,'y*')
    case 2
        plot(x,y,'m*')
    case 3 
        plot (x,y,'r*')
end

