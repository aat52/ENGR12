//R13
//Angela Tseng, Aron Griffin, Pragya Malhotra

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
	//declare variables
	int sum=0, status=2, count=0;
	int x[10], y[10];
	
	char filename[50];
	
	FILE *infile;
	FILE *outfile;
	outfile=fopen("OutputData.txt", "w");
	
	//error check file
	do
	{
		printf("Enter a file name: \n");
		scanf("%s", filename);
		
		infile= fopen(filename, "r");
	} while (infile==NULL);
	
	//error check and extract data
	while (status==2 && status != EOF)
	{
		status = fscanf(infile, "%d %d", &x[count], &y[count]);
		
		if (status == EOF)
		{ 
			break;
		}
		if (status != 2 && status !=EOF)
		{
			printf("Error in data");
			break;
		}
		
		//print data to screen and outfile
		printf("%d %d \n", x[count], y[count]);
		fprintf(outfile, "%d %d \n", x[count], y[count]);
		
		//add the sum
		sum=sum+x[count]+y[count];	
		
		//increment count
		count=count+1;
	}

	//print data to screen and outfile
	printf("The sum is %d \n", sum);
	printf("The total number of points is %d \n", count);
	
	fprintf(outfile, "The sum is %d \n", sum);
	fprintf(outfile, "The total number of points is %d \n", count);
	
	//close files
	fclose(infile);
	fclose(outfile);
}
	
	
	
			
		
	
