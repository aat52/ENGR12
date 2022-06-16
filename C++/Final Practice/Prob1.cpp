#include <stdio.h>
#include <stdlib.h>

double my_function(double, int);

int main()
{
	double a=1.1, b=4.5;
	int c=3;
	
	printf("In main, BEFORE function call, a = %.2lf, b = %.2lf, c = %d \n\n", a, b, c);
	
	a = my_function(b, c);
	
	
	printf("In main, AFTER function call, a = %.2lf, b = %.2lf, c = %d \n\n", a, b, c);
}

double my_function(double b, int c)
{
	double a;
	b=b*2;
	c=c*2;
	a=b+c;
	
	printf("In function, AFTER calculation,  a = %.2lf, b = %.2lf, c = %d \n\n", a, b, c);
	return a;
}
