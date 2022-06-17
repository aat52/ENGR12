%name, date

%compare if statement and switch case
clear
clc

%enter number
user_num=input ('Please enter a number ');

%check if odd or even
remainder=rem(user_num,2);

%display message using if statement
if remainder==0
    disp('You entered an even number')
else
    disp('You entered an odd number')
end

%read (load) images
num1=imread('num1.jpg');
num2=imread('num2.jpg');

%display message with switch case
switch remainder
    case 0
        disp('Even number')
        imshow(num2);
    otherwise
        disp('Odd number')
        imshow(num1);
end

img12=num1*3;
imshow(img12)

img13=num1*.5;
imshow(img13)


