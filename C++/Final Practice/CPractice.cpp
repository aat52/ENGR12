#include <stdio.h>
#include <stdlib.h>

int main()
{
	int x[10], y[10], status=2, i=0, sum=0, total=0; 
	char filename[50];
	
	FILE *infile;
	FILE *outfile;
	
	do 
	{
		printf("File name: ");
		scanf("%s", filename);
		infile=fopen(filename, "r");
	}while (infile==NULL);
	
	outfile=fopen("OutputData.txt","w");
	printf("Here's the data read from the file\n\n");
	

	while (status !=EOF && status==2)
	{
		status=fscanf(infile, "%d %d", &x[i], &y[i]);
		if (status ==EOF)
			break;
			printf("%d %d\n\n", x[i], y[i]);
			fprintf(outfile, "%d %d\n\n", x[i], y[i]);
			sum=sum+x[i]+y[i];
			total=total+status;
			i=i+1;
	}
	
	printf("The total sum is %d\n", sum);
	printf("The total number of points is %d\n", total);
	fprintf(outfile, "The total sum is %d\n", sum);
	fprintf(outfile, "The total number of points is %d\n", total);
	
	fclose(infile);
	fclose(outfile);
}

			
