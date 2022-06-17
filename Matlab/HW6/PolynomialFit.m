%Team 34, Justin Brozyno, Kelsey Murray, and Kemeng Wei
function PolynomialFit(x, y)
order = 1;
        while order < 2 || order > 10
            order = input('Enter order here: ');
        end
        sortxold = sort(x);
        coeff = polyfit(sortxold, y, order); %Determines coefficients
        low = min(x);
        high = max(x);
        xnew = linspace(low, high, 300);
        sortedx = sort(xnew);
        ypoly = polyval(coeff, sortedx); %plots line of best fit? 
        title('Polynomial Fit');
        plot(sortedx, ypoly);
        hold on;
        
        % r-squared value
        xsquared = x.^2;
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
        step1 = sum((y-mean(y)).^2);
        step2 = sum((yt-mean(y)).^2);
        rsquared = step2/step1;
        plot(x, yt);
        text(0.5, 0.5, ['r^2 = ',num2str(rsquared)]);
        error = max(abs(y-yt));
        errory = polyval(coeff, error, order);
          disp(['The largest absolute error is ', num2str(error), ' and the x location is ',num2str(errory)]);
        choose = input('Would you like to estimate y for a certain x-value? ','s');
        test = 0;
            while test ==0
                if choose == 'y'
                    xval = input('Enter an x-value here: ');
                    choose = polyval(coeff, xval, order);
                    disp(['The estimate of y for x = ', num2str(xval),' is ', num2str(choose)]);
                    break
                elseif choose == 'n'
                    break
                else
                    test = 0;
                end
            end
                
                
        
        
        
 