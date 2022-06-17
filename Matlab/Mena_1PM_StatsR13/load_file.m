function [x,y]=load_file

filename='0';
while exist(filename)==0
filename=input('Whats the name of your file','s')
end
%load file
data=load(filename);

%Dimensions and size of data
Datasize=size(filename);
numrows=Datasize(1);
numcols=Datasize(2);

%x and y variables
x=data(1,:);
y=data(2,:);
