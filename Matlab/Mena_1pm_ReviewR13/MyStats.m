function MyStats(cols,y)

avgy=mean(y)
vary=var(y)
stddevy=std(y)

%switch elements
first=y(1);
last=y(cols);

y
y2=[y(cols),y(2:(cols-1)),y(1)]