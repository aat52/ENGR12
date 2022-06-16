#include <stdlib.h>
#include <stdio.h>

int main()
{
	//declare variables
	int x[50], status=1, i=0;
	
	//pointer for file to be read
	FILE *infile;
	
	//open file
	infile=fopen("WriteF.txt","r");
	
	//read data from file
	printf("Here's the data that is read from the file: \n");
	
	while (status !=EOF)
	{
		status=fscanf(infile, "%d", &x[i]);
		if (status==EOF)
		break;
		
		printf("%d \n", x[i]);
		i=i+1;
	}
	
	fclose(infile);
}

		
