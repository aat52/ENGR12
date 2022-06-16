#include <stdio.h>
#include <stdlib.h>

//declare function prototypes
void function1();
void function2(double[][3], char[]);
int function3(int);
void function4(double[][3], double[]);

//initialize main function
int main()
{
	//call function 1
	function1();
	
	//call function 2
	char filename[50];
	double data[100][3];
	function2(data, filename);
	
	
	//in main, ask user to provide integer between 0 and 50
	int user_num;
	
	do
	{
		printf("Provide a number between 0 and 50: ");
		scanf("%d", &user_num);
	} while (user_num<0 || user_num>50);
	
	
	//call function 3
	int mod;
	mod=function3(user_num);
	
		//print mod to screen and file
		FILE *outfile;
		outfile=fopen("ReviewPrint.txt", "a");
		
		printf("\nMod = %d", mod);
		fprintf(outfile, "\nMod = %d", mod);
	
	
	//call function 4
		//store solution in array
	double solution[2];
	function4(data, solution);
	
	//print sum and min to screen and file
	printf("\nThe sum is = %lf", solution[0]);
	printf("\nThe min is = %lf", solution[1]);
	fprintf(outfile,"\nThe sum is = %lf", solution[0]);
	fprintf(outfile,"\nThe min is = %lf", solution[1]);
	
	//close files
	fclose(outfile);
	
}


//function 1
void function1()
{
	//print header
	printf("Name, date, etc\n");
}


//function 2
void function2(double data[][3], char filename[])
{
	//create pointers
	FILE *infile;
	
	//check file existence
	do
	{
		printf("Enter file name: ");
		scanf("%s", filename);
		infile=fopen(filename, "r");
	} while (infile==NULL);
	
	FILE *outfile;
	outfile=fopen("ReviewPrint.txt", "w");
	
	//declare variables
	int status=3, i=0;
	
	//load file into array
	while (status !=EOF)
	{
		
		//scan into file
		status=fscanf(infile, "%lf %lf %lf", &data[i][0], &data[i][1], &data[i][2]);
		
		//end if end of file
		if (status==EOF)
		{
			break;
		}
		
		//print to file
		fprintf(outfile, "%lf %lf %lf", data[i][0], data[i][1], data[i][2]);
		i++;
	}
	
	//close files
	fclose(infile);
	fclose(outfile);
	
}


//function 3
int function3(int user_num)
{
	int mod;
	mod=60 % user_num;
	
	return(mod);
		
}
	
	
//function 4
void function4(double data[][3], double solution[])
{
	int rows=0, cols=0; 
	double sum=0, min=data[0][0];
	
	//min and sum of first five rows
	for (rows=0; rows<=4; rows++)
	{
		for (cols=0; cols<=2; cols++)
		{
			sum = sum + data[rows][cols];
			if (min>data[rows][cols])
			{
				min=data[rows][cols];
			}
		}
	}
	
	solution[0]=sum;
	solution[1]=min;
}
	
	
		
		
		
		
		
		
		
		
