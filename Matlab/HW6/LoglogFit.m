%Team 34, Justin Brozyno, Kelsey Murray, and Kemeng Wei
function LoglogFit(x,y)
i = 1;
n = length(x);
j = 1;
for i=1:1:n     %step through to filter zeros
    if y(i)>0
        xnozero(j) = x(i);
        ynozero(j) = y(i);
        j = j + 1;
    end
end
xlog = log(xnozero);    %apply log to x and y data
ylog = log(ynozero);

coeff = polyfit(xlog,ylog, 1);
ynew = polyval(coeff, xlog);

title('Loglog Fit');
plot(xlog, ylog, '*');
hold on
plot(xlog, ynew);
