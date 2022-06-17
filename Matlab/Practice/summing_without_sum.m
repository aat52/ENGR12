%summing without the sum command

clear
clc

%create array and find length of the array
x=[3 5 7 8 9 2 -4 5 -10 20 13];
n=length(x);

%create increment i=1 and summing variable
i=1;
summing=0;

%find sum of the elements without using the sum command
%while loop
while i<=n
    summing=summing+x(i);
    i=i+1;
end

summing1=0;

for j=1:n
    summing1=summing1+x(j);
end

%display
disp(['Sum using the sum command ',num2str(sum(x))])
disp(['Sum using the while loop ',num2str(summing)])
disp(['Sum using the for loop ',num2str(summing1)])


