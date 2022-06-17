function [P,N,i,A]=user_inputs()

P=input('Principle amount of money to be borrowed: ');

N=input('Number of months to pay the loan back: ');

I=input('Monthly interest rate in percent: ');

A=input('Annuity per interest period: ');

i=I/100;