#include <stdlib.h>
#include <stdio.h>

int main()
{
	int i, j;
	double a[2][2];
	
	printf("\nEnter the elements of Matrix a");
	
	for (i=0; i<2; i=i+1)
	{
		for (j=0; j<2; j=j+1)
		{
			printf("\nEnter the element in ROW=%d, COL=%d: ", i+1, j+1);
			scanf("%lf", &a[i][j]);
		}
	}
	
	printf("\nThese are the following elements for Matrix a: \n");
	for (i=0; i<2; i=i+1)
	{
		for (j=0; j<2; j=j+1)
		{
			printf("%.2lf\n", a[i][j]);
		}
	}
}

	
