
#include <stdio.h>
#include <stdlib.h>

int fib(int n);
int _fib(int n, int n2, int n1);

int fib(int n){

	return _fib(n, 1, 1);
}

int _fib(int n, int n2, int n1){

	if(n == 0){
		return n2;
	}
	else if(n == 1){
		return n1;
	}
	else{
		return _fib(n-1, n1, n2 + n1);
	}
}

int main(int argc, char** argv){
  printf("%d\n", fib(atoi(argv[1])));
  return 0;
}
