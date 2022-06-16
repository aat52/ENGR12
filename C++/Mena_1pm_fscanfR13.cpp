#include <stdio.h>
#include <stdlib.h>

//Pragya Malhotra, Aron Griffin, Angela Tseng
//R13

int main()
{
	//define variable
	int i,var1,y;
	double user_num;
	
	//read file
	FILE *infile;
	
	infile=fopen("data3.txt", "r");
	
	printf("Data read from file: \n");
	
	//read data
	for (i=1;i<=4;i++)
	{
		fscanf(infile,"%d",&var1);
		printf("%d\n",var1);
	}
	
	//user input
	printf("Enter a number: ");
	scanf("%lf",&user_num);
	
	y=2*user_num;
	
	//open ourfile
	FILE *outfile;
	
	outfile=fopen("Print1.txt","w");
	
	//print to screen
	printf("The value for y is %d",y);
	
	//print to file
	fprintf(outfile,"The value for y is %d",y);
	
	//close files
	fclose(infile);
	fclose(outfile);
}
