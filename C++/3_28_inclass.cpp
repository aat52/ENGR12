#include <stdlib.h>
#include <stdio.h>

int main()
{
	int x, status=2;
	double y;
	
	char filename[5];
	
	//create pointer
	FILE *infile;
	
	do
	{
		//ask for file name
		printf("Enter file name: \n");
		scanf("%s", filename);
		
		//open file
		infile=fopen(filename, "r");
	} while (infile==NULL);
}
	
		
	
