#include <stdio.h>
#include <stdlib.h>

//Pragya Malhotra, Aron Griffin, Angela Tseng
//R13

int main()
{
	//define variable
	int i;
	float y;
	
	//write to file
	FILE *WriteToFile;
	
	WriteToFile=fopen("WriteF.txt", "w");
	
	//print address
	printf("Address of the file is %p\n",WriteToFile);
	
	//for loop
	for (i=1;i<=5;i++)
	{
		y=5*i;
		
		//print to screen
		printf("%d\t%.3f\n",i,y);
		
		//print to file
		fprintf(WriteToFile,"%d\t%.3f\n",i,y);
	}
	
	fclose(WriteToFile);
	
}
