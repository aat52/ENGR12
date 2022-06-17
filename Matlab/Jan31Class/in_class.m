%solve Ax=b
clear
clc

%load data
load new_data.txt;

%extract A and b
%pretend don't know dimensions
Matrix_dim=size(new_data);
NumRows=Matrix_dim(1);
NumCols=Matrix_dim(2);

A=new_data(:, 1:NumRows);
b=new_data(: ,NumCols);

%solve
x=inv(A)*b
