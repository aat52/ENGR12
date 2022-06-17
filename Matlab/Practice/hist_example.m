%plot a histogram example

clear
clc

load new_data.txt

%number of elements in each bin
n_10=hist(new_data)

%ask user for bin number
bin_num=input('Number of bins?: ');

n_user=hist(new_data,bin_num)

%plot side by side
subplot(1,2,1)
hist(new_data)
subplot(1,2,2)
hist(new_data,bin_num)



