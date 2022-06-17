function filename=img_file()
%one variable being sent back, no variables coming in
%get the image file from user and set error checking

filename='0';

while exist(filename)==0
    filename=input('Enter a file name: ','s')
end