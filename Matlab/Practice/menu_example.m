%switch case example

x=[1:10];
y=[linspace(5,50,10)];

%if statement
color=input('What color of data points would you like? (r,g,y) ','s');
if color=='r'
    disp('Your plot will use the color red.')
    plot(x,y,'r*')
elseif color=='g'
    disp('Your plot will use the color green.')
    plot(x,y,'g*')
else
    disp('Your plot will use the color yellow.')
    plot(x,y,'y*')
end

pause

%switch case otherwise
datacolor=menu('What color?','yellow','magenta','red')
switch datacolor
    case 1
        plot(x,y,'y*')
    case 2
        plot(x,y,'m*')
    otherwise
        plot(x,y,'r*')
end

