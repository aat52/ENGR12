%function to get image file
function filename=img_file
filename='0';

while exist(filename)==0
    filename=input('Please enter file name: ','s');

end
%incorporate error checking

disp('it worked')