#include <stdio.h>
#include <stdlib.h>

int main()
{
	int c=5, *ptr_c=&c;
	
	//print what is stored in c, and address
	printf("What is in c is %d, address of c %p \n",c,&c);
	
	//print what is stored in ptr_c, and address
	printf("What is in ptr_c is %p, address of ptr_c is %p \n",ptr_c,&ptr_c);
	
	//print data stored at address stored in ptr_c (indirection)
	printf("What is stored at address stored in ptr_c - indirection is %d \n", *ptr_c);
}
