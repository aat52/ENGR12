%determine if the sum of two user inputs is even or odd

clear
clc

%get inputs
a=input('Provide a number for a: ');
b=input('Provide a number for b: ');

%calculate sum
x=a+b;
result=0;

%if statement
if (rem(x,2)==0)
    result='even';
else
    result='odd';
end

disp(['The sum is ', result])
