function [MatrixA, Arrayb]=loading

%get file name and error check

filename = '0';

while exist(filename)==0
    filename=input('Please enter file name: ', 's');
end

%load data
data=load(filename);

%get matrixA and arrayB
matrix_dim=size(data);
rows=matrix_dim(1);
cols=matrix_dim(2);

MatrixA=data(:,1:rows);
Arrayb=data(:,cols);

