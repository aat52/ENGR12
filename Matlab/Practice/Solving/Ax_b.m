%using matlab to solve Ax=b

clear
clc

%load data
load new_data.txt


%display data
new_data;

%extract matrix A and b without knowing dimensions
Matrix_dim=size(new_data);
Rows=Matrix_dim(1);
Cols=Matrix_dim(2);

%extract a and b
A=new_data(:,1:Rows);
b=new_data(:,Cols);

%solve for x
x=inv(A)*b