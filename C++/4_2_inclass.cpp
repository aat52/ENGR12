#include <stdlib.h>

void userinfo(void);
void function2(int, double);

int main()
{
	userinfo();
	
	int m=15;
	double y=30.5;
	
	printf("The values are m=%d, y=%lf\n", m, y);
}

void userinfo(void)
{
	printf("Name and group\n");
	printf("Date\n");
	printf("Program description");
}

void function2(int m, double y)
{
	m=3;
	y=50;
	printf("values from function are m=%d, y=%lf\n", m, y);
}


