#include <stdio.h>
#include <stdlib.h>
//GROUP R13
//Aron Griffin, Angela Tseng,Pragya Malhotra
double my_function(double,int);//

//main function
int main()
{
	 double a=1.1,b=4.5;
	 int c=3;
	 
	 printf(" In main, BEFORE function call, a= %.2lf, b= %.2lf, c=%d",a,b,c);//printing values
	 a=my_function(b,c);//calling function
	 printf("\nIn main, AFTER function call, a= %.2lf, b= %.2lf, c=%d",a,b,c);//printing values
}
//******************************
//running my function
double my_function(double b,int c )
 {
	 double a;
		b=b*2;
		c=c*2;
		a=b+c;
	printf("\nIn function, AFTER calculation call, a= %.2lf, b= %.2lf, c=%d",a,b,c);//printing values
	return(a);//returning variable a
	
 }
