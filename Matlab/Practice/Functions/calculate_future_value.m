%calculate future value
clear
clc

disp('This program calculates future values');

%call function
[P,N,i,A]=user_inputs();

%call function 
F_1=Future_withP(P,N,i,A);

%call function
F_2=Future_withA(P,N,i,A);

%display
disp(['The calculated value for F_1 is ', num2str(F_1)]);
disp(['The calculated value for F_2 is ', num2str(F_2)]);