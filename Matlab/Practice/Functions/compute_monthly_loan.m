%computing a monthly loan payment
clear
clc

disp('The purpose of this program is to compute a monthly loan payment.');

%call function
[P,N,i]=user_inputs();

%call function
A=calculate_A(P,N,i);


disp(['Monthly loan payment: ', num2str(A)]);

Y='Y';
N='N';

again=input('Would you like to calculate another payment plan? (Y/N)');

while again=='Y'
    disp('You have chosen to compute another monthly loan payment.');

    %call function
    [P,N,i]=user_inputs();
    
    %call function
    A=calculate_A(P,N,i);


    disp(['Monthly loan payment: ', num2str(A)]);
   
    again='N';
    
    again=input('Would you like to calculate another payment plan? (Y/N) ');

end
   
disp('See you again!');
