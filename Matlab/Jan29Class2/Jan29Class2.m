%name, date

%purpose is to manipulate images
clear
clc

%call function for header
img_header;

%call function to get name of file
filename=img_file;

%call function to load image
my_img=img_load(filename);

%get user choice
choice=input('Select 1-darker, 2-lighter ');

%call function to modify image
new_img=img_modify(choice, my_img);

imshow(new_img)


%purpose is to manipulate images
clear
clc

%get file from user
filename=input('Please enter file name: ', 's');

%load image
my_img=imread(filename);

%get user choice lighter/darker?
choice=input('Select 1-darker or 2-lighter ');

%modify image
switch choice
    case 1
        new_img=my_img*.5;
    case 2
        new_img=my_img*5;
end

imshow(new_img)



