#include <stdlib.h>
#include <stdio.h>
#define PI 3.14156


int main()
{
	printf("The symbol for quotation marks is \"");
	printf("\nThe symbol for percent is %%");
	printf("\nUse \\n to insert a new line\n");

	int apples=5, bananas;
	double oranges, grapes;
	char letter;
	
	printf("\nPlease enter a number for bananas: ");
	scanf("%d", &bananas);
	
	printf("\nPlease enter a number for oranges: ");
	scanf("%lf", &oranges);
	
	printf("\nPlease enter a number for grapes: ");
	scanf("%lf", &grapes);

	printf("\nEnter a letter: ");
	scanf(" %c", &letter);
	
	printf("\n\napples = %d\nbananas = %d\noranges = %lf\ngrapes = %lf", apples, bananas, oranges, grapes);
	printf("\nLetter = %c", letter);
	printf("\nPi = %lf", PI);

}
