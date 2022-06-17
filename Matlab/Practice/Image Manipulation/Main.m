%split the previous problem into functions
clear
clc

%call img_header function
img_header;

%get the name of the image file
filename=img_file();

%load image
my_img=img_load(filename);

%get user choice
choice=input('Enter 1-darker, or 2-lighter' );

%modify image
new_img=img_modify(choice,my_img);

%display the image using a function
imshow(new_img)