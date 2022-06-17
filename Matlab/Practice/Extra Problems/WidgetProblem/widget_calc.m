%using matlab to answer widget questions
clear
clc

HourlyWages=[5 5.5 6.5 6 6.25];
HoursWorked=[40 43 37 50 45];
WidgetOutput=[1000 1100 1000 1200 1100];
EarnedPerWeek=HourlyWages.*HoursWorked

TotalSalaryPaid=sum(EarnedPerWeek)

TotalWidgets=sum(WidgetOutput)

WidgetPerHour=WidgetOutput./HoursWorked

[MostWidgets MostEfficientWorker]=max(WidgetPerHour)

