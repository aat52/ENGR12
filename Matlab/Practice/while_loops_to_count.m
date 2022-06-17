%using while loops to count even numbers

clear
clc

%create array and find the length of the array
my_array=[7 8 9 10 11];
n=length(my_array);

%create increment i=1, even_nums
i=1;
even_nums=0;

%use a while loop to count how many even numbers are in the array
while i<=n
    %if the i element in my_array divides by 2 and has no
    %remainder
    if(mod(my_array(i),2)==0)
        %increment the even_nums by one
        even_nums=even_nums+1;
    end
    %increment i
    i=i+1;
end

%display the amount of even numbers
%use brackets to represent an array
disp(['There are ', num2str(even_nums), ' even numbers in the array'])

