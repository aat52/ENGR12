%loops to extract elements from arrays

clear 
clc

%create array and define length
my_array=[7 8 9 10 11];
n=length(my_array);

%set count=1
count=1;

%while loop to count element in array
while count<=n
    my_array(count);
    count=count+1;
end

count1=1;

%for loop to extract count elements in array
for count1=1:n
    my_array(count1);
    count1=count1+1;
end

disp(['The number of elements in the array using a while loop is ',num2str(count)]);
disp(['The number of elements in the array using a for loop is ',num2str(count1)]);