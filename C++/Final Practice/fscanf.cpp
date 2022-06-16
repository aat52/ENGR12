#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
	int i, var, num, y;
	
	FILE *infile;
	FILE *outfile;
	
	infile=fopen("data.txt", "r");
	
	printf("Data read from the file is: \n");
	
	for (i=1;i<=4;i=i+1)
	{
		fscanf(infile, "%d", &var);
		printf("%d\n", var);
	}
	
	fclose(infile);
	
	printf("Provide a number: ");
	scanf("%d", &num);
	
	y=2*num;
	
	outfile=fopen("Print1.txt", "w");
	
	printf("The value for y is %d\n", y);
	fprintf(outfile, "The value for y is %d\n", y);
	
	fclose(outfile);
}

