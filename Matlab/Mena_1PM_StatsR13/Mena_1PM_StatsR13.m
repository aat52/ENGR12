%R13
clear
clc

%Call load function

[x,y]=load_file

%Call x stats function

[a,b,c]=x_stats(x);

%Call xy_plots

xy_plots(x,y)