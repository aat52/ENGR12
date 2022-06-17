
clear
clc

%load the text file
load LoadFile.txt

data=LoadFile;

%display the data
data

%create and display an array called HourlyWage
HourlyWage=data(1,:)

%create and display an array called HoursWorked
HoursWorked=data(2,:)

%create and display an array called WidgetsProduced
WidgetsProduced=data(3,:)

%if each widget sold for $5, how much revenue did each worker bring in?
RevenuePerWorker=WidgetsProduced*5

%what is the total revenue for the week?
TotalRevenue=sum(RevenuePerWorker)
