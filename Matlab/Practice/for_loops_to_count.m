%using for loops to count even numbers
clear 
clc

%create array an dfind length of the array
my_array=[7 8 9 10 11];
n=length(my_array);

%create even_nums
even_nums=0;

%use a for loop to count number of even numbers
%i is initialized within the loop, increment by one, until n
for i=1:n
    if(mod(my_array(i),2)==0)
        even_nums=even_nums+1;
    end
end

%display amount of even numbers
disp(['There are ',num2str(even_nums),' even numbers in the array'])
