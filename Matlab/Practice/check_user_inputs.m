%error checking user inputs

clear 
clc

%checking for user input error
%clearly specify possible responses
a=input('Provide a number between 1 and 5 for a: ');
b=3;

%use and/or operators
while (a<1 || a>5)
    disp('Error!');
    a=input('Provide a number between 1 and 5 for a: ');
end

c=a+b