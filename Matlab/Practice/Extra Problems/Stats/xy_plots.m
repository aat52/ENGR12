function xy_plots(x,y)

Title1=input('Title for subplot 1: ','s');
Title2=input('Title for subplot 2: ','s');

subplot(2,1,1)

title(Title1)
scatter(x,y)

subplot(2,1,2)
title(Title2)

hist(y,10)