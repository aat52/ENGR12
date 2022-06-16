#include <stdio.h>
#include <stdlib.h>

int user_choice();
void math(int, int, int[], int[], int[], int[]);


int main()
{
	
	FILE *infile;
	char filename[50];
	
	do
	{
		printf("Enter file name: ");
		scanf("%s", filename);
		
		infile=fopen(filename, "r");
		
	}while (infile==NULL);
	
	int x[50], y[50], z[50], status=3, i=0;
	printf("x \t y \t z \t");
	while (status !=EOF)
	{
		status=fscanf(infile, "%d %d %d", &x[i], &y[i], &z[i]);
		if (status==EOF)
		{
			break;
		}
		printf("%d \t %d \t %d",x[i],y[i],z[i]);
		i++;
	}
	
	int choice;
	choice=user_choice();
	
	int result[50];
	math(choice, i, x, y, z, result);
	
	printf("The first and last elements of the array are %d and %d\n", result[0], result[i-1]);
	
}

int user_choice(void)
{
	int mychoice;
	
	printf("Pick 1 to add arrays. Pick 2 to multiply arrays: \n");
	scanf("%d", &mychoice);
	
	return(mychoice);
}

void math(int choice, int i, int x[], int y[], int z[], int result[])
{
	if (choice == 1)
	{
		for (int j=0; j<=i ; j++)
		{
			result[j]=x[j]+y[j]+z[j];
		}
	}
	else if (choice == 2)
	{
		for (int j=0; j<=i; j++)
		{
			result[j]=x[j]*y[j]*z[j];
		}
	}
}

