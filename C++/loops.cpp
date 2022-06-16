#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
	//create variable
	int choice;
	
	//request user input
	printf("Type 1, 2, or 3: ");
	scanf("%d", &choice);
	
	//print result
	if (choice==1)
	{
		printf("You chose 1\n");
	}
	else if (choice==2)
	{
		printf("You chose 2\n");
	}
	else if (choice==3)
	{
		printf("You chose 3\n");
	}
	else 
	{
		printf("You chose none of the options\n");
	}
}

