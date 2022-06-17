%write a program that displays the sum of user provided numbers
%the user should be able to provide as many numbers as they want

clear 
clc

%variable to store sum
sum=0;

%variable to indicate if the user wants to add a new number
again='Y';
Y=again;
finish='N';
N=finish;

while again=='Y'
    user_num=input('Enter a number to sum: ');
    sum=sum+user_num;
    again=input('Would you like to add another number? (Y/N) ');
    if again=='N'
       disp(['The sum of the user provided numbers is: ', num2str(sum)]);
    end
end

