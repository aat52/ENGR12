%if versus switch-case-otherwise

%get number from user
user_num=input('Enter a number: ')

%check if odd or even
remainder=rem(user_num,2);


%if statement
if remainder==0
    disp(['The number ', num2str(user_num),' using an if statement is even.']);
else
    disp(['The number ', num2str(user_num),' using an if statement is odd.']);
end

%switch case otherwise
switch remainder
    case 0
        disp(['The number ', num2str(user_num),' using a switch case is even.']);
    otherwise
        disp(['The number ', num2str(user_num),' using a switch case is odd.']);
end

