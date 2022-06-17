%loglog plotting

clear
clc

x=[1:7];
y=[2 9.2 22.4 42.2 69 103 144.6] ;
plot(x,y,'r*')
loglog(x,y,'r*')


pause

clear
clc

x=[1:7];
y=[2 9.2 22.4 42.2 69 103 144.6] ;

%change y to ln(y) and x to ln(x) for fitting
ln_y=log(y);
ln_x=log(x);

%plot ln_y versus ln_x
plot(ln_x,ln_y,'r*')

%fit straight line through ln_x and ln_y
coeff=polyfit(ln_x,ln_y,1)

