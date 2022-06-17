%Aron Griffin, Angela Tseng, Pragya Malhotra
%R13

%function 2
function function2(operation,a)

%display the function used
switch operation
    case 1
        disp(['The mean is ', num2str(a)])
    case 2
        disp(['The standard deviation is ', num2str(a)])
    case 3
        disp(['The variance is ', num2str(a)])
    case 4
        disp(['The minimum is ', num2str(a)])
    case 5
        disp(['The maximum is ', num2str(a)])
end




