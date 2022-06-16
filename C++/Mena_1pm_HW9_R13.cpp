//Angela Tseng, Aron Griffin, Pragya Malhotra
//Mena 1pm
//R13

#include <stdlib.h>
#include <stdio.h>
#include <math.h>


int main()
{
	//display integrity statement
		printf("We in Team R13, Angela, Aron, and Pragya, certify that we have completed this assignment in an honest manner");
	
	//ask user for a file name (assume correct file name entry)
		char fname[50];
		printf("\nEnter filename: \n");
		scanf("%s", fname);
		
	//read the text file into a 2 dimensional array (size=number of rows in file vs number of columns)
		FILE *data;
		int stored[365][2];
		int num1,num2, file_status=0, count=0;
		data=fopen(fname,"r"); 
	//a. display the data as shown on the second page of the hw assignment
		while (file_status != EOF)
		{
			file_status=fscanf(data,"%d %d", &num1, &num2);
			stored[count][0] = num1;
			stored[count][1] = num2;
			printf("Temperatures on Day %d in 1930 = %d\t 2001 = %d\n", count, num1, num2);
			count++;
		}
		fclose(data);
		
	//b. find the mean and standard deviation of both columns and display them to the screen
		double avg1930, avg2001;
		double sum1930=0.0, sum2001=0.0;
		int i;
		for (i=0.0; i<365.0;i++) {
			sum1930=sum1930+stored[i][0];
		}
		avg1930=sum1930/365.0;
		
		for (i=0.0;i<365.0;i++) {
			sum2001=sum2001+stored[i][1];
		}
		avg2001=sum2001/365.0;
		
		//printf("\nThe average temp for 1930 is: %6.4lf", avg1930);
		//printf("\nThe average temp for 2001 is %6.4lf", avg2001);
		
		double std1930, std2001, dif1930=0.0, dif2001=0.0;
		int k,j;
		
		for (k=0; k<=365;k++) 
		{
			dif1930=dif1930+pow((avg1930-stored[k][0]),2);
		}
		std1930=pow((dif1930/(count-1)),.5);
		
		for (j=0;j<=365;j++) 
		{
			dif2001=dif2001+pow((avg2001-stored[j][1]),2);
		}
		std2001=pow((dif2001/(count-1)),.5);
		
		//printf("\nThe standard deviation of the temp for 1930 is: %6.4lf", std1930);
		//printf("\nThe standard deviation of the temp for 2001 is %6.4lf", std2001);
	
	//c. write this data to a file named "results.dat"
		FILE *outfile;
		outfile=fopen("results.dat","w"); 	
		
		//print to file
		fprintf(outfile, "\nThe average temp for 1930 is: %6.4lf", avg1930);
		fprintf(outfile, "\nThe average temp for 2001 is: %6.4lf", avg2001);
		fprintf(outfile, "\nThe standard deviation of the temp for 1930 is: %6.4lf", std1930);
		fprintf(outfile, "\nThe standard deviation of the temp for 2001 is: %6.4lf", std2001);
		
		fclose(outfile);
	
	//d. find the min and max of both columns and display them to the screen
		int min1930 = stored[0][0];
		int min2001 = stored[0][1];
		int max1930 = stored[0][0];
		int max2001 = stored[0][1];
		for (int count =0; count <366; count++)
		{
			if (stored[count][0]<=min1930)
			{
				min1930 = stored[count][0];
			}
			if (stored[count][1]<=min2001)
			{
				min2001 = stored[count][1];
			}
			if(stored[count][0]>=max1930)
			{
				max1930 = stored[count][0];
			}
			if(stored[count][1]>=max2001)
			{
				max2001 = stored[count][1];
			}
			if(count == 365)
			{
				//printf("\nThe min temp for 1930 is: %d", min1930);
				//printf("\nThe min temp for 2001 is: %d", min2001);
				//printf("\nThe max temp for 1930 is: %d", max1930);
				//printf("\nThe max temp for 2001 is: %d", max2001);
			}
		}
	
	
	//e. append this data to the results file
		outfile=fopen("results.dat","a"); 	
		
		//print to file
		fprintf(outfile, "\nThe min temp for 1930 is: %d", min1930);
		fprintf(outfile, "\nThe min temp for 2001 is: %d", min2001);
		fprintf(outfile, "\nThe max temp for 1930 is: %d", max1930);
		fprintf(outfile, "\nThe max temp for 2001 is: %d", max2001);
		
		fclose(outfile);
	
	//f. make a new 1 dimensional array that contains the difference between the 1930 and 2001 data for each day
		double difference[count];
		
		int m;
		for (m=0; m<=count; m++)
		{
			difference[m]=stored[m][1]-stored[m][0];
		}
	
	//g. find the max and min differences between the two years and display them to the screen
		int mindifference=difference[0], maxdifference=difference[0];
		int n;
		
		for (n=0; n<=count; n++)
		{
			//if (difference[n]<mindifference)
			//{
			//	mindifference = difference[n];
			//}
			if (difference[n]>maxdifference)
			{
				maxdifference = difference[n];
			}
		}
		mindifference=min2001-min1930;
		
		//printf("\nThe min difference is: %d", mindifference);
		//printf("\nThe max difference is: %d", maxdifference);
		
		outfile=fopen("results.dat","a"); 	
	
		//append this data to the results file
			fprintf(outfile, "\nThe min difference between 1930 and 2001 is: %d", mindifference);
			fprintf(outfile, "\nThe max difference between 1930 and 2001 is: %d", maxdifference);
			
			fclose(outfile);
	
	//h. find the median of both columns and display them to the screen
		int sorter,median1930,median2001;
		
		int p,q;
		
		for(p=0;p<=(count-1);p++)
		{
			for(q=p+1;q<=count;q++)
			{
				if(stored[p][0]<stored[q][0])
				{
					sorter=stored[p][0];
					stored[p][0]=stored[q][0];
					stored[q][0]=sorter;
				}
				if(stored[p][1]<stored[q][1])
				{
					sorter=stored[p][1];
					stored[p][1]=stored[q][1];
					stored[q][1]=sorter;
				}
			}
		}
		
		if(count%2==1)
		{
			median1930=stored[count/2+1/2][0];
			median2001=stored[count/2+1/2][1];
		}
		else
		{
			median1930=(stored[count/2][0]+stored[count/2+1][0])/2;
			median2001=(stored[count/2][1]+stored[count/2+1][1])/2;
		}
		//printf("\nThe median temperature for 1930 is: %d\n",median1930);
		//printf("The median temperature for 2001 is: %d\n",median2001);
	
	//i. append this data to the results file
		outfile=fopen("results.dat","a"); 	
			
		fprintf(outfile, "\nThe median temperature for 1930 is: %d\n",median1930);
		fprintf(outfile, "The median temperature for 2001 is: %d\n",median2001);
		
		fclose(outfile);
	
	//display all the calculations
	printf("\nThe average temp for 1930 is: %6.4lf", avg1930);
	printf("\nThe average temp for 2001 is: %6.4lf", avg2001);
	printf("\nThe min temp for 1930 is: %d", min1930);
	printf("\nThe min temp for 2001 is: %d", min2001);
	printf("\nThe max temp for 1930 is: %d", max1930);
	printf("\nThe max temp for 2001 is: %d", max2001);
	printf("\nThe min difference between 1930 and 2001 is: %d", mindifference);
	printf("\nThe max difference between 1930 and 2001 is: %d", maxdifference);
	printf("\nThe standard deviation for 1930 is: %6.4lf", std1930);
	printf("\nThe standard deviation for 2001 is %6.4lf", std2001);
	printf("\nThe median temperature for 1930 is: %d\n",median1930);
	printf("The median temperature for 2001 is: %d\n",median2001);
	
}
