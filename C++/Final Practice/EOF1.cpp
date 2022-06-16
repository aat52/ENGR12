#include <stdio.h>
#include <stdlib.h>

int main()
{
	FILE *infile;
	FILE *outfile;
	int status=1, x[10], i=0;
	char filename[50];
	
	do 
	{
		printf("Enter file name: ");
		scanf("%s", filename);
		infile=fopen(filename, "r");
	}while (infile==NULL);
	
	outfile=fopen("EOF1.txt", "w");
	
	while (status !=EOF)
	{
		status=fscanf(infile, "%d", &x[i]);
		if (status==EOF)
		{
			break;
		}
		printf("%d\n\n", x[i]);
		fprintf(outfile,"%d\n\n", x[i]);
		i++;
	}
	
	fclose(infile);
	fclose(outfile);
}
