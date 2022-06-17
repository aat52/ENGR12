%Team 34, Justin Brozyno, Kelsey Murray, and Kemeng Wei
clear; 
clc;
disp('We in team 34, Justin Brozyno, Kelsey Murray, and Kemeng Wei, certify that we have completed this assignment in an honest manner');

header;     %call header function to display team number and member names
repeat = 0;
yesorno = 0;
z = 0;

while repeat == 0   %while loop for if user wants to enter another set of data
    fname = '';     
    while (~exist(fname))       %error check for valid file name
        fname = input('Enter file name here: ', 's');
    end

    data = load(fname);     %load and store data
    [r,c] = size(data);     %create variables of size of variable data's row and column sizes

    if r == 2
        x = data(1,:);
        y = data(2,:);
        disp('The data is 2D');
    elseif c == 2
        x = data(:,1);
        y = data(:,2);
        disp('The data is 2D');
    else
        disp('The data is not 2D');
    end
   
    pause;

    [choice, plottitle, xlbl, ylbl] = plotting;    %call plotting function to prompt for plot labels %need to ask for color too!!!

    switch choice       %switch caseto determine which type of plot function to use. uses info sent from plotting function menu
        case 1
            LinearFit(x,y);     %call LinearFit function
        case 2
            PolynomialFit(x,y);     %call PolynomialFit function
        case 3       
            SemilogFit(x,y);        %call SemilogFit function
        case 4
            LoglogFit(x,y);     %call LoglogFit function
    end
    
%Use another set of data? 
    while z == 0
        yesorno = input('Would you like to enter a new set of data without ending the program? If yes, enter y. If no, enter n. ','s');
        if yesorno == 'y'
            repeat = 0;
            z = 1;
        elseif yesorno == 'n'
            repeat = 1;
            break
        else
            z = 0;
        end
    end  
    z = 0;
end


        
        
        
        