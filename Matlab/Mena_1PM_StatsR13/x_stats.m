function [a,b,c]=x_stats(x)

%calculations of x
a=min(x);
b=max(x);
c=mean(x);
%displaying calculations
disp('The min is')
a
disp('The max is')
b
disp('The mean is')
c