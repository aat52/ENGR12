%part b 
%main
x=4;
z=[-8 4 5 -1 3];
y=sum(z);
disp(['Main value of x is: ',num2str(x)])
disp(['Main value of y is: ',num2str(y)])

[y,x]=confuse_function(x,y,z);
disp(['Main value of x is: ',num2str(x)])
disp(['Main value of y is: ',num2str(y)])