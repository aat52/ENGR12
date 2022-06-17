%plot data

%user enter name of file
filename='0';

while exist(filename)==0
    filename=input('Enter file name: ','s');
end

data=load(filename);

[rows,cols]=size(data);

%assign variables x and y

if rows==2
    x=data(1,:);
    y=data(2,:);
elseif cols==2
    x=data(:,1);
    y=data(:,2);
else
    disp('Error in data');
end

%allow user to pick one of five colors for plot symbol using menu

symbolcolor=menu('What color plot symbol? ','red','blue','green','yellow');

%use subplot command to plot x/y using star/circle and chosen color

switch symbolcolor
    case 1
        subplot(2,1,1)
        plot(x,y,'r*')
        title('Using Star')
        subplot(2,1,2)
        plot(x,y,'ro')
        title('Using Circle')
    case 2
        subplot(2,1,1)
        plot(x,y,'b*')
        title('Using Star')
        subplot(2,1,2)
        plot(x,y,'bo')
        title('Using Circle')
    case 3
        subplot(2,1,1)
        plot(x,y,'g*')
        title('Using Star')
        subplot(2,1,2)
        plot(x,y,'go')
        title('Using Circle')
    case 4
        subplot(2,1,1)
        plot(x,y,'y*')
        title('Using Star')
        subplot(2,1,2)
        plot(x,y,'yo')
        title('Using Circle')
end


%add titles "using star" and "using circle"

