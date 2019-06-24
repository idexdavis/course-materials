#include <stdio.h>
int fib(int n);

int main(int argc, char**argv){
	int n;
	sscanf(argv[1],"%d", &n);
	int fib_result = fib(n);
	
	printf("fib(%d) = %d\n", n, fib_result); 
	return 0;
}
