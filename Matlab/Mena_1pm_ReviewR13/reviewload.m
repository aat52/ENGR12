function [data]=reviewload

%errorcheck
filename='0';
while exist(filename)==0
filename=input('What is your filename: ','s');
end

%loaddata
data=load(filename);
