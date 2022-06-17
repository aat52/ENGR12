%Aron Griffin Pragya malhotra Angela Tseng
%R13

clear
clc
%display header
header
%review load
[data]=reviewload;
[rows,cols]=size(data);

%Ask user for #>0
usernum=0;
while usernum<=0 || usernum>=rows
    usernum=input('What number would you like?');
end

%call GetxandY
[x,y]=GetXandY(data,usernum);

%mystats
MyStats(cols,y);

%user provides number
usernum2=input('enter number: ')

i=1;
j=1;
count=0;
for i=1:rows
    for j=1:cols
        if data(i,j)==usernum2
            count=count+1;
        end
    end
end

disp([num2str(usernum2),' appears ',num2str(count),' times'])

%myplot
MyPlot(x,y)