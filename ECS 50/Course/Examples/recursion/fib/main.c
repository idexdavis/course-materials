
#include <stdio.h>

int fib(int n);

int main(int argc, char** argv){

	int n;
	
	sscanf(argv[1], "%d", &n);
	
	printf("fib(%d) = %d\n", n, fib(n));
	return 0;
}
