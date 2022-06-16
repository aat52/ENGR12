#include <stdio.h>
#include <stdlib.h>

int main()
{
	FILE *infile;
	FILE *outfile;
	
	int status=2, i=0, x[10][2];
	char filename[50];
	
	do
	{
		printf("Enter file name: ");
		scanf("%s", filename);
		infile=fopen(filename, "r");
	}while (infile==NULL);
	
	outfile=fopen("EOF2.txt", "w");
	
	while (status !=EOF)
	{
		status=fscanf(infile, "%d %d", &x[i][0], &x[i][1]);
		if (status==EOF)
		{
			break;
		}
		printf("%d \t %d\n\n", x[i][0], x[i][1]);
		fprintf(outfile,"%d \t %d\n\n", x[i][0], x[i][1]);
		i++;
	}
	fclose(infile);
	fclose(outfile);
}
