#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
	int a, b, absum;
	double c, d, acsum, powd2;
	
	printf("Provide a value for a: ");
	scanf("%d", &a);
	printf("Provide a value for b: ");
	scanf("%d", &b);
	printf("Provide a value for c: ");
	scanf("%lf", &c);
	printf("Provide a value for d: ");
	scanf("%lf", &d);
	
	acsum=a+c;
	absum=a+b;
	powd2=pow(d,2);
	
	printf("\nThe sum of a and c is %lf",acsum);
	printf("\nThe sum of a and b is %d",absum);
	printf("\nRaising d to the power of 2 is %lf",powd2);

}

