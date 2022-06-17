%Team 34, Justin Brozyno, Kelsey Murray, and Kemeng Wei
function [choice, plottitle, xlbl, ylbl] = plotting 

choice = menu('How do you want to fit the data?', 'Linear', 'Polynomial', 'Semi-log','Log-log');

plottitle = title(input('Enter title here: ','s'));
xlbl = xlabel(input('Enter x-axis label here: ','s'));
ylbl = ylabel(input('Enter y-axis label here: ','s'));
hold on

     
     
        
        