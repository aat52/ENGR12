%practice loglog

clear
clc

%loads data from a file
filename='0';
while exist(filename)==0
    filename=input('Enter your data file: ','s');
end

%extract data
data=load(filename);
[rows,cols]=size(data);
if rows==2
    x=data(1,:);
    y=data(2,:);
elseif cols==2
    x=data(:,1);
    y=data(:,2);
else
    disp('Error in data.');
end 

%filter data
iend=length(x);
j=1;
for i=1:iend
    if x(i)>0 & y(i)>0
        x2(j)=x(i);
        y2(j)=y(i);
        j=j+1;
    end
end

%transform data
ln_x2=log(x2);
ln_y2=log(y2);

%find best fit exponential function
semilog_coeff=polyfit(x2,ln_y2,1);

%best fit power function
loglog_coeff=polyfit(ln_x2,ln_y2,1);

%get predicted y values
semilog_yfit=polyval(semilog_coeff,x2);
loglog_yfit=polyval(loglog_coeff,ln_x2);

%plot appropriate data points and lines
subplot(1,2,1)
plot(x2,ln_y2,'*')
hold on
plot(x2,semilog_yfit)
title('Semilog')
%xlabel/ylabel
hold on
subplot(1,2,2)
plot(ln_x2,ln_y2,'*')
hold on
plot(ln_x2,loglog_yfit)
title('Loglog')
hold off

