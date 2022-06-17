%Aron Griffin, Angela Tseng, Pragya Malhotra
%R13
clear
clc

%integrity statement
disp('We in team R13 (Aron Griffin, Angela Tseng, Pragya Malhotra) certify that we have completed this assignment in an honest manner.')

again=1;
while again==1
    
    %call function 1
    [filename]=function1;

    %load data from file
    data=load(filename);

    %create menu
    operation=menu('What operation would you like to perform?','mean','standard deviation','variance','min','max');

    %switch case
    switch operation
        case 1
            a=mean(data);
        case 2
            a=std(data);
        case 3
            a=var(data);
        case 4
            a=min(data);
        case 5
            a=max(data);
    end

    %call function2
    function2(operation,a);

    %call function3
    function3(data);
    
    again=menu('Would you like to run this program again with new data?','Yes','No');
end
