%simulate a coin flip

clear
clc

heads=0;
tails=0;

for i=1:1000000
    x=rand;
    if x<0.5
        heads=heads+1;
    else
        tails=tails+1;
    end
end

disp(heads);
disp(tails);