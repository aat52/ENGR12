function MyPlot(x,y)

plottitle=input('title: ','s');
xlab=input('x label','s');
ylab=input('y label','s');

type=menu('type of plot points','red squares','yellow circles');
switch type
    case 1
        plot(x,y,'rs')
        title(plottitle)
        xlabel(xlab)
        ylabel(ylab)
    case 2
        plot(x,y,'yo')
        title(plottitle)
        xlabel(xlab)
        ylabel(ylab)
end

        
