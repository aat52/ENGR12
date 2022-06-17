clear 
clc

x=3;
z=[6 2 4 1 -5]; 
y = sum(z);
%sum(z)=8

[a,b] = funquiz8a(x,y,z); 

disp(['Value of a is: ',num2str(a)]) 
disp(['Value of b is: ',num2str(b)])