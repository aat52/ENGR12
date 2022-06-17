%make a user select between four TV options and error check

clear
clc


%ask if the user wants to watch TV
yes='Y';
Y=yes;

no='N';
N=no;

close_tv='y';
y=close_tv;

keep_tv='n';
n=keep_tv;

watch_tv=input('Do you want to watch TV? (Y/N) ');
while (watch_tv~='Y') && (watch_tv~='N')
    disp('Error! You must choose between Y and N.');
    watch_tv=input('Do you want to watch TV? (Y/N) ');
end

if watch_tv=='Y'
    disp('You have chosen to watch TV. What would you like to watch?')
   %get user input for shows (1)Hulu, (2)News, (3)Netflix, (4)Nevermind
    tv_option=input('(1)Hulu, (2)News, (3)Netflix, (4)Cancel ');
   %set while loop to error check user
    while tv_option<1 || tv_option>4
        disp('Error! You must choose between 1 and 4.');
        tv_option=input('What would you like to watch?');
    end
    %choose
    if tv_option==1
        disp('You have chosen to watch Hulu. Enjoy!');
    elseif tv_option==2
        disp('You have chosen to watch News. Enjoy!');
    elseif tv_option==3
        disp('You have chosen to watch Netflix. Enjoy!');
    elseif tv_option==4
        close_tv=input('You have chosen to cancel. Are you certain? (y/n) ');
        if close_tv=='y'
            disp('See you again!')
        elseif close_tv=='n'
            while close_tv=='n'
                disp('You have chosen to watch TV. What would you like to watch?');
                tv_option=input('(1)Hulu, (2)News, (3)Netflix, (4)Cancel ');
                while tv_option<1 || tv_option>4
                   disp('Error! You must choose between 1 and 4.');
                   tv_option=input('What would you like to watch? ');
                end
                if tv_option==1
                   disp('You have chosen to watch Hulu. Enjoy!');
                   close_tv='y'
                elseif tv_option==2
                   disp('You have chosen to watch News. Enjoy!');
                   close_tv='y'
                elseif tv_option==3
                   disp('You have chosen to watch Netflix. Enjoy!');
                   close_tv='y';
                elseif tv_option==4
                   close_tv=input('You have chosen to cancel. Are you certain? (y/n) ');
                   while (close_tv~='y') && (close_tv~='n')
                        disp('Error! You must choose between y and n.');
                        close_tv=input('You have chosen to cancel. Are you certain? (y/n) ');
                   end
                end
            end
        end
    end
end
disp('See you again!')


        
    
    