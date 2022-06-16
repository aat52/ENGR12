//Angela Tseng, Aron Griffin, Pragya Malhotra
//R13

#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <ctype.h>

#define pi 3.14159
int main()
{
	char again;
	do
	{
	//display integrity statement
		printf("We in Team R13, Angela, Aron, and Pragya, certify that we have completed this assignment in an honest manner");
	
	//display class, group mumber, name, and username on separate lines
		printf("\nMena 1pm");
		printf("\nR13");
		printf("\nPragya Malhotra, Angela Tseng, Aron Griffin");
		printf("\naat52,alg247,prm64\n");
	
	//allow the user to answer one of three options
	char choice;
	
	printf("Type a, b, or c: \n");
	scanf(" %c", &choice);
	
	//option a: calculate voltage for a given value of time
	switch(choice)
	{
	case 'a':
		//use a loop to help selection
		{
			int i;
			double t=-4;
			int n;
			double V;
			double sum;
			double summation=0;
			//time (t) and number of terms in series (n, where i=1,2....n) are entered as input quantities
			while(t<-3 || t>3)
			{
			printf("Enter a value for time (t): \n");
			scanf("%lf/n",&t);
			}
			printf("Enter a value for n: \n");
			scanf("%d/n",&n);	
			//calculation with V
				for(i=1;i<=n;i++)
		{
			sum=(1.0/(pow((2.0*i)-1,2)))*cos(((2*i-1)*pi*t)/3);
			summation=summation+sum;
		}
		V=(3.0/2)-(summation*(12/pow(pi,2)));
		
			//display the values of t, n, and V
			printf("t value inputted: ");
			printf("%lf\n",t);
			printf("n value inputted: ");
			printf("%d\n", n);
			printf("Voltage: ");
			printf("%lf\n",V);
			
		}
		break;
	case 'b':	
		//option b: selecting only t and some value e as input quantities

		{
			int i=1;
			double t=-4;
			double e;
			double V;
			double sum;
			double summation=0;
			while(t<-3 || t>3)
			{
				printf("Enter a value for time (t): \n");
				scanf("%lf/n",&t);
			}
			printf("Enter a value for e: \n");
			scanf("%lf/n",&e);	
		
		//continue adding terms in the series until the abs value of the term you are about to add is less than or equal to e
		do
		{
			sum=(1/(pow((2*i)-1,2)))*cos(((2*i-1)*pi*t)/3);
			summation=summation+sum;
			i=i+1;			
		}while(fabs(sum)>e);
		i=i-1;
		V=(3.0/2)-(summation*(12/pow(pi,2)));
		
		
		//display the values of t, e, n, and V
			printf("t value: ");
			printf("%lf\n",t);
			printf("e value: ");
			printf("%lf\n",e);
			printf("n value: ");
			printf("%d\n", i);
			printf("V value: ");
			printf("%lf\n",V);
		}
			break;
		//option c: change in voltage between t2 and t1 when t2>t1
	case 'c':
		{
			int i;
			int k;
			double t1=-4;
			double t2=-4;
			int n;
			double V1;
			double V2;
			double deltaV;
			double sum1;
			double summation1=0;
			double sum2;
			double summation2=0;
			//t2, t1, and n are entered as input quantities
			while(t1<-3 || t1>3)
			{
				printf("Enter a value for t1: \n");
				scanf("%lf/n",&t1);
			}
			while(t2<t1)
			{
				printf("Enter a value for t2: \n");
				scanf("%lf/n",&t2);
			}
			printf("Enter a value for n: \n");
			scanf("%d/n",&n);	
				
			//calculate the change in voltage
			for(i=1;i<=n;i++)
			{
				sum1=(1/(pow(2*i-1,2)))*cos(((2*i-1)*pi*t1)/3);
				summation1=summation1+sum1;
			}
			V1=(3.0/2)-summation1*(12/pow(pi,2));
			for(k=1;k<=n;k++)
			{
				sum2=(1/(pow(2*k-1,2)))*cos(((2*k-1)*pi*t2)/3);
				summation2=summation2+sum2;
			}
			V2=(3.0/2)-summation2*(12/pow(pi,2));
			deltaV=V2-V1;
			//display the values of both times t2, t1, n, V, deltaV for each data set
			printf("Time 1: %lf\n",t1);
			printf("Time 2: %lf\n",t2);
			printf("n value: %d\n",n);
			printf("V1: %lf\n",V1);
			printf("V2: %lf\n",V2);
			printf("Delta V: %lf\n",deltaV);
			}
			break;
		
	default:
			break;
	}
	//ask user if they want to repeat the calculation
		
		printf("Again? (Y/N)");
		scanf(" %c", &again);
	
	//loop the program to allow the user to do a different option
	}while(toupper(again)=='Y');
}
