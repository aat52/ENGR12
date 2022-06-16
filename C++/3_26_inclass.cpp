#include <stdlib.h>
#include <stdio.h>

int main()
{
	int i, y;
	
	//create file pointer
	FILE *outfile;
	
	//open file
	outfile=fopen("data1.txt", "w"); 
	//w because we want to write to the file
	//file can be .txt or .dat
	
	//print address of the file (the pointer is the address - use %p
	printf("Address of the file is %p \n", outfile);
	
	//create a loop to print i and y to screen and to file
	for (i=1;i<=3;i++)
	{
		y=2*i;
		
		//print to screen
		printf("%d \t %d \n", i, y);
		
		//print to file
		fprintf(outfile, "%d \t %d \n", i, y);
	}<3
	
	printf("\n");
	fclose(outfile);
	//reopen file
	outfile=fopen("data1.txt","a");
	//a because we want to add info to the file (if w, overwrite previous data)
	
	//new calculation
	int z;
	z=y*4;
	
	//print to screen
	printf("%d \n", z);
	
	//print to file
	fprintf(outfile, "%d \n", z);
	
	//close file
	fclose(outfile);
	
	
	
	//read data fromdata1.txt and display to screen
	//create pointer variable for file reading from
	FILE *infile;
	
	//open file to read data
	infile=fopen("data1.txt", "r"); //r because reading from file
	
	//print file address to screen
	printf("Address of file is %p \n", infile);
	for (i=1;i<=3;i++)
	{
		fscanf(infile, "%d %d", &var1, &var2);
		printf("%d \t %d \n", var1, var2);
	}
	
	//close file
	fclose(infile);
	
}
		
