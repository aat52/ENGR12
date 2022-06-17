%Aron Griffin, Pragya Malhotra, Angela Tseng
%R13
clear 
clc 

%Integrity statement 
disp('We in team R13, (Aron Griffin, Pragya Malhotra, and Angela Tseng), certify that we have completed this assignment in an honest manner.')

%Part 1:City Public Works

%load data file
load AdamTown.dat;

%a-finding the mean of the data

%while loop for sum
count1=1;
sum1=0;
while(count1<=length(AdamTown))
    sum1=sum1+AdamTown(count1);
    count1=count1+1;
end

%finding mean
avg=sum1/length(AdamTown);

%display
avg
disp(['The mean of the data is ',num2str(avg)])

%b-min using loop
%while if nested loop
count2=1;
count3=2;
while(count3<=length(AdamTown)&&count2<=length(AdamTown))
    if(AdamTown(count2)<AdamTown(count3))
        count3=count3+1;
    else
        count2=count2+1;
    end
end

%diplay
minimum=AdamTown(count3)
disp(['The minimum of the data is ',num2str(AdamTown(count3))])

%maximum while if nested loop
count4=1;
count5=2;
while(count4<=length(AdamTown)&&count5<=length(AdamTown))
    if(AdamTown(count4)>AdamTown(count5))
        count5=count5+1;
    else
        count4=count4+1;
    end
end

%diplay
maximum=AdamTown(count5)
disp(['The maximum of the data is ',num2str(AdamTown(count5))])

%d-using sort
if(mod(AdamTown,2)==1)
    sorted=sort(AdamTown);
    median=(sorted(ceil(length(AdamTown)/2)));
else
    sorted=sort(AdamTown);
    median=(sorted(((length(AdamTown)/2)+1))+sorted(((length(AdamTown)/2))))/2;
end

%display
med=median
disp(['The median is ',num2str(median)])

%variance
count6=1;
variance=0;
while(count6<=length(AdamTown))
    variance=variance+(AdamTown(count6)-avg)^2;
    count6=count6+1;
end

%display
variance=variance/(length(AdamTown)-1)
disp(['The variance of the data is ',num2str(variance)])

%f-standard deviation
stddev=sqrt(variance)
disp(['The standard deviation of the data is ',num2str(stddev)])




