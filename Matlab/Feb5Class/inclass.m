%name, date
%solving system of equations

clear
clc

%call loading function
[A, b]=loading;

%call loading function
x=Axb(A,b);

%display 
disp('The resulting array x is: ')
disp(x)

