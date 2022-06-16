#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

void calculation(int[], int[]);

int main()
{
	int array[2], answer[2];
	char again='Y';
	
	do
	{
			printf("Enter an integer: \n");
			scanf("%d", &array[0]);
			
			printf("Enter another integer: \n");
			scanf("%d", &array[1]);
	
		calculation(array, answer);
		
		printf("The product is %d\n",answer[0]);
		printf("The sum is %d\n",answer[1]);
		
		printf("Again?");
		scanf(" %c",&again);
		
		
	}while(toupper(again)=='Y');
}
		
		
void calculation(int array[], int answer[])
{
	int product, sum;
	
	product=array[0]*array[1];
	sum=array[0]+array[1];
	
	answer[0]=product;
	answer[1]=sum;
}
