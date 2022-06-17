function [x,y]=load_file()

filename='0';

while exist(filename)==0
    filename=input('Enter file name: ','s');
end

data=load(filename);
[rows,cols]=size(data);

if rows==2
    x=data(1,:);
    y=data(2,:);
elseif cols==2
    x=data(:,1);
    y=data(:,2);
else
    disp('Error in data.')
end


% alternative method 
% extract matrix A and b without knowing dimensions
% Matrix_dim=size(new_data);
% Rows=Matrix_dim(1);
% Cols=Matrix_dim(2);
% 
% extract a and b
% A=new_data(:,1:Rows);
% b=new_data(:,Cols);
    
