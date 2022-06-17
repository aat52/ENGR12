%check for errors in data

clear
clc

load new_data.txt

matDim=size(new_data);

rows=matDim(1);
cols=matDim(2);

if rows==cols-1
    A=new_data(:,1:rows);
    b=new_data(:,cols);
    
    if det(A)~=0
        x=inv(A)*b
    else
        disp('Error in file.')
    end
else
    disp('Error in file.')
end
