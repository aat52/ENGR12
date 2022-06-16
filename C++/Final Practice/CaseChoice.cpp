#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	int choice;
	printf("Pick 1, 2, or 3: ");
	scanf("%d", &choice);
	
	switch (choice)
	{
		case 1:
		printf("\nChoice 1");
		break;
		case 2:
		printf("\nChoice 2");
		break;
		case 3:
		printf("\nChoice 3");
		break;
		default:
		printf("\nNone of the options were chosen");
	}
}

