#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
	int i;
	float y;
	
	
	FILE *WriteToFile;
	
	WriteToFile=fopen("WriteF.txt","w");
	
	printf("The address of the file is %p\n", WriteToFile);
	
	for (i=1;i<=5;i=i+1)
	{
		y=5*i;
		printf("i=%d y=%.3f \n", i , y);
		fprintf(WriteToFile, "i=%d y=%f \n", i , y);
	}
	
	fclose(WriteToFile);
}
		
