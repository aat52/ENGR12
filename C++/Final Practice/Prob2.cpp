#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <ctype.h>
//GROUP R13
//Aron Griffin, Angela Tseng,Pragya Malhotra

void func_header(void);
double func_a(int,int,double);

	//main function
int main()
	{
		func_header();
		char x='Y';
		//loop to ask user if again
	do{
		int p,n;
		double i,a,iactual;
		//ask for variables
		printf("\nEnter a value for a principle amount of money to be borrowed: ");
		scanf("%d",&p);
		printf("\nEnter a value for a interest as a percentage: ");
		scanf("%lf",&i);
		printf("\nEnter a number of months: ");
		scanf("%d",&n);
		iactual=i/100;
		a=func_a(p,n,iactual);
		//print to screen
		printf("\nA is equal to %.2lf", a);
		
		printf("\nRun program again?(Y/N) ");
		scanf(" %c",&x);
	}while(toupper(x)=='Y');
	
	}
//******************************
	//running function
void func_header(void)
	 {
		 //print names and group
		printf("Aron Griffin, Angela Tseng,Pragya Malhotra\n R13\n");//printing names
	 }

//function a
double func_a(int p,int n,double i)
	 {
		 //calculation
		double a;
		a=p*((i*pow((1+i),n))/(pow((1+i),n)-1));
		return(a);
	 }
