function xy_plots(x,y)

%Title inputs
Title1=input('Input Title','s')
Title2=input('Input Title','s')

%Scatter plot
subplot(2,1,1)

scatter(x,y)

title(Title1)

%Histogram
subplot(2,1,2)

hist(y)

title(Title2)

