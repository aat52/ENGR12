%Pragya Malhotra Aron Griffin Angela Tseng R13
clear
clc
disp('"We in team R13,Pragya Malhotra Aron Griffin Angela Tseng,certify that we have completed this assignment in an honest manner."')
%Takes photos from images folder and assigns variables

%Cathy Phtos

Cathy1=imread('1R.jpg');
Cathy2=imread('1G.jpg');
Cathy3=imread('1B.jpg');

%Grass Photos
Grass1=imread('images/2R.jpg');
Grass2=imread('images/2G.jpg');
Grass3=imread('images/2B.jpg');

%plaza photos
Plaza1=imread('images/3R.jpg');
Plaza2=imread('images/3G.jpg');
Plaza3=imread('images/3B.jpg');

%Combining the files into one picture
Cathy= cat(3, Cathy1, Cathy2, Cathy3);
Grass= cat(3, Grass1, Grass2,Grass3);
Plaza= cat(3, Plaza1, Plaza2, Plaza3);

%concantenate the images
Picture=horzcat(Cathy,Grass,Plaza);
imshow(Picture)