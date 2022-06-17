%use the provided image and ask the user if they want to make it lighter
%darker

clear
clc

%get file name
filename=input('Enter the filename: ', 's');

%load image
my_img=imread(filename);

Y='Y';
N='N';
lighter='lighter';
darker='darker';

%get user choice
alter=input('Would you like to alter this image? (Y/N) ');

%error check
while alter~='Y' && alter~='N'
    disp('Enter Y for yes and N for no.');
    alter=input('Would you like to alter this image? (Y/N) ');
end

if alter=='Y'
    choice=input('You have chosen to alter this image. Would you like to make this image lighter or darker? ');
    
    %get size of image
    [rows, cols]=size(my_img);

    %alter the image depending on the case
    switch choice
        case darker
            new_img=my_img*0.3;
        case lighter
            new_img=my_img*3;
    end
    
    %display the image
    imshow(new_img)
    
    %ask again
    alter=input('Would you like to alter this image again? (Y/N) ');
   
    if alter=='Y'
        disp('You have chosen to alter this image again.');
        choice=input('Would you like to make this image lighter or darker? ');
    
        %get size of image
        [rows, cols]=size(new_img);

        %alter the image depending on the case
        switch choice
            case darker
                new_img1=new_img*0.3;
            case lighter
                new_img1=new_img*3;
        end
        imshow(new_img1)
        
    elseif alter=='N'
        disp('You have chosen to not alter this image again. See you again!');
    end
    
elseif alter=='N'
    disp('You have chosen to not alter this image. See you again!');
end    
        
 


        