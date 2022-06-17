%Team 34, Justin Brozyno, Kelsey Murray, and Kemeng Wei
function SemilogFit(x,y)
i = 1;
n = length(x);
j = 1;
for i=1:1:n     %filer zeros
    if y(i)>0
        xnozero(j) = x(i);
        ynozero(j) = y(i);
        j = j + 1;
    end
end

ylog = log(ynozero);    %apply log to y data

coeff = polyfit(xnozero,ylog, 1);   
ynew = polyval(coeff, xnozero);

title('Semilog Fit');
plot(xnozero, ylog, '*');
hold on
plot(xnozero, ynew);
