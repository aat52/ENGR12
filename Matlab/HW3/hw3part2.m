%R13 Angela Tseng, Pragya Malhotra, Aron Griffin

%clear variables
clear; clc;

%define variables for A, B, and C
A=[2 -1 3];
B=[3 5 2];
C=[-2;-5;-1];

%calculate operations
a=A*C;
    disp(['The result of section a is: ', num2str(a)]);
b=A-B;
    disp(['The result of section b is: ', num2str(b)]);
c=3*A;
    disp(['The result of section c is: ', num2str(c)]); 
d=A.*B;
    disp(['The result of section d is: ', num2str(d)]);
e=B.^A;
    disp(['The result of section e is: ', num2str(e)]); 
f=B*C;
    disp(['The result of section f is: ', num2str(f)]);

%store the result of the following operations in a 2x3 cell array
Part2_ans={a b c;d e f};
