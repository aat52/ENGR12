#include <stdio.h>
#include <stdlib.h>

int main()
{
	int choice;
	
	printf("Type 1, 2, or 3: ");
	scanf("%d", &choice);
	
	if (choice==1)
	{
		printf("Choice 1\n");
	}
	else if (choice==2)
	{
		printf("Choice 2\n");
	}
	else if (choice==3)
	{
		printf("Choice 3\n");
	}
	else
	{
		printf("None were chosen\n");
	}
}
				
