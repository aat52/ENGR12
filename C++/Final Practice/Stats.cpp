#include <stdio.h>
#include <stdlib.h>

void calculation(double[], double[], int);

int main()
{
	int status=1, count=0, i=0;
	char filename[50];
	double scores[50];
	
	FILE *infile;
	do
	{
		printf("Enter file name: ");
		scanf("%s", filename);
		infile=fopen(filename,"r");
	}while(infile==NULL);
	

	while (status !=EOF)
	{
		status=fscanf(infile,"%lf", &scores[i]);
		if (status==EOF)
		{
			break;
		}
		i++;
		count++;
	}
	
	double stats[2]={0,0};
	
	printf("Before the function, the values int the array function are: \naverage=%.2lf, \nsum=%.lf\n", stats[0], stats[1]);
	
	calculation(scores, stats, count);
	
	printf("After the funciton, the values in the array stats are: \naverage=%.2lf, \nsum=%.2lf\n", stats[0], stats[1]);
	
	
}

void calculation(double scores[], double stats[], int count)
{
	int j;
	double sum=0.0;
	
	for (j=0; j<count; j=j+1)
	{
		sum = sum+scores[j];
	}
	stats[0]=sum/count;
	stats[1]=sum;
}

