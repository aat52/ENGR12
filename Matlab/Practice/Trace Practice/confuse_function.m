function [x,y]=confuse_function(y,x,z)
for i=1:length(z)
    if (z(i)==x)
        y=i;
    end
end
disp(['Function value of x is: ',num2str(x)])
disp(['Function value of y is: ',num2str(y)])