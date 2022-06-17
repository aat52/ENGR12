%name, date

%get data
filename=input('Which file?', 's');
data=load(filename);

%extract x and y
x=data(1,:);
y=data(2,:);

%find coefficients
Coeffs=polyfit(x,y,2)

%polyfit finds equation by finding coeff
%y = -0.0082x^2 + 0.7459x + 13.4722

%find y value for x = 3
yPolyval=polyval(Coeffs,3)
yEquation=(-0.0082*(3^2))+(0.7459*3)+13.4722

%to plot poly, get many x points
xnew=linspace(min(x), max(x), 200);
yfitpoints=polyval(Coeffs, xnew);

%plot
plot(x,y,'r*',xnew,yfitpoints);

%get y value for and x provided by user
x_user=input('Please provide a value for x: ');
y+userPolyval=polyval(Coeffs,x_user)

%or

