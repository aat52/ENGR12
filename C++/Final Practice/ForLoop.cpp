#include <stdlib.h>
#include <stdio.h>

int main()
{
	int sum, n, i;
	
	printf("Enter a value for n: ");
	scanf("%d", &n);
	
	sum=0;
	
	for (i=1;i<=n;i=i+1)
	{
		sum=sum+i;
	}
	printf("The sum is %d", sum);
}

