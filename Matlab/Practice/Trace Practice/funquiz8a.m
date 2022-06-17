function [x,y]= funquiz8a(a,b,c) 

x = 2*b-a;
y=a;

for i=1:length(c)
%length(c)=5

y=y+c(i); 
end

disp(['Function value of x: ',num2str(x)]) 
disp(['Function value of y: ',num2str(y)]) 
disp(['Function value of a: ',num2str(a)])
disp(['Function value of b: ',num2str(b)])