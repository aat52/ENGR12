%Team 34, Justin Brozyno, Kelsey Murray, and Kemeng Wei
function LinearFit(x, y)
    plot(x,y);
    
    hold on;    %retain previously plotted data on the plot
    xsquared = x.^2;    %begin r^2 calculations
    xy = x.*y;
    sumx = sum(x);
    sumxsquared = sum(xsquared);
    sumxy = sum(xy);
    sumy = sum(y);
    l = length(x);
    a = [sumx, l; sumxsquared, sumx];
    b = [sumy; sumxy];
    ainv = inv(a);
    coeff = ainv*b;
    yt = x*coeff(1)+coeff(2);
    title('Linear Fit');
    plot(x, yt);    % plot trendline
    step1 = sum((y-mean(y)).^2);
    step2 = sum((yt-mean(y)).^2);
    rsquared = step2/step1;     %calculate r^2 value
    text(0.5, 0.5, ['r^2 = ',num2str(rsquared)]);   %display r^2 value on the plot
    error = max(abs(y-yt));     %find magnitude of max error
    disp(['The largest absolute error is ', num2str(error)]);       %display the max error
 
