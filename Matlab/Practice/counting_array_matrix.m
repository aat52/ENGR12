%counting 

%array

x=[-1 6 -5 2 -9 5 2 -3 9];

%set count to 0
count=0;

%count number of negative numbers
for i=1:length(x)
    if x(i)<0
        count=count+1;
    end
end

count


%matrix
x1=[-1 6 -5; 2 -9 5; 2 -3 9];

%get dimensions of x
[rows,cols]=size(x1);

count=0;

for i=1:rows
    for j=1:cols
        if x1(i,j)<0
            count=count+1;
        end
    end
end

count
