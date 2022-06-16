/*Angela Tseng aat52*/

#include <stdio.h>
#include <stdlib.h>

int main()
{
	/*print paragraphs*/
	printf("I, Angela Tseng, certify that I have completed this assignment in an honest manner.\n");
	printf("Mena\n");
	printf("Team R13\n");
	printf("Angela Tseng\n");
	printf("aat52\n\n");
	
	printf("The first \\n puts the text on a new line, the double slash by the n is needed to allow the\n");
	printf("printing of the \\n in this printout.\n");
	printf("If you want to add a tab in the print out you insert \\t it will tab the text as shown here.\n\n");
	printf("Sometimes it is nice to print out text in \"double quotes\", this requires the double quote escape\n");
	printf("sequence \\\". Sometimes it is nice to print out text in \'single quotes\', this requires the single\n");
	printf("quote escape sequence \\'. \n");
	printf("Want to printout a %% sign you need to use the escape sequence \"%%%%\", do you \n");
	printf("understand\n");
	printf("the code required to print this sequence out\\?\n\n");
	printf("Finally, notice all the single slashes \'\\' at the end of each line. These \n");
	printf("allow you to wrap the printf string to the next line for easy reading. \n");
	printf("Make a bell ring at this point. Did you hear the bell ring?\n");
	
	
	/*write code to read in variables*/
		int A;
		double B;
		char C;
	
		/*input data*/
		printf("\nEnter 1 for A: \n");
		scanf("%d", &A);
	
		printf("\nEnter 2.34 for B: \n");
		scanf("%lf", &B);
	
		printf("\nEnter f for C: \n");
		scanf(" %c", &C);
	
		/*screen output in user friendly manner*/
		printf("\n\nA=%d\n",A);
		printf("B=%5.2lf\n",B);
		printf("C=%c\n\n",C);
	
		system("pause");
	
	/*screen output using int format type (will result in error when built, disp(A=1, B=73896, C=102))*/
		printf("\n\nA=%d\n",A);
		printf("B=%d\n",B);
		printf("C=%d\n\n",C);
	
	/*screen output using double format type (will result in error when built, disp(A, B, C=2.340000))*/
		printf("\n\nA=%lf\n",A);
		printf("B=%lf\n",B);
		printf("C=%lf\n\n",C);
	
	/*screen output using double format type (will result in error when built, disp(A= ,B=?, C=f))*/
		printf("\n\nA=%c\n",A);
		printf("B=%c\n",B);
		printf("C=%c\n\n",C);
		
	
	
	/*define and display G*/
	int G[4]={3,5,8,9};
	printf("G= ");
	printf("[%d %d %d %d]\n", G[0], G[1], G[2], G[3]);
	printf("Array G elements\nG[0]=%d, G[1]=%d, G[2]=%d, G[3]=%d\n",G[0], G[1], G[2], G[3]);
	
	
	
	/*define and display H*/
	double H[2][2]={{4.4,5.5},
				{6.6,7.7}};
	printf("\nH= ");
	printf("[%.1lf %.1lf\n    %.1lf %.1lf]", H[0][0], H[0][1], H[1][0], H[1][1]);
	printf("\nArray H elements\nH[0][0]=%.1lf, H[0][1]=%.1lf\nH[1][0]=%.1lf, H[1][1]=%.1lf\n", H[0][0], H[0][1], H[1][0], H[1][1]);
	
	
	
	return 0;

}
