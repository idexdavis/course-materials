//This program sums up all the command line arguments
#include <stdio.h>

int main(int argc, char* argv[]){
	int sum = 0;
	int num;
	int i;
	
	for(i = 1; i < argc; ++i){ //start at 1 because argv[0] is the name of the program
		//sscanf is just like scanf except it reads from a string
		//(the first argument, instead of the standard input
		sscanf(argv[i], "%d", &num);
		sum += num;
	}
	
	printf("The sum of the numbers entered is %d\n", sum);
	return 0;
}
