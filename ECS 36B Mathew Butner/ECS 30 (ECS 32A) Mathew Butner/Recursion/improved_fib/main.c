#include <stdio.h>

int _fib(int n, int n2, int n1) {
  if (n == 0) {
    return n2;
  } else if (n == 1) {
    return n1;
  } else {
    return _fib(n - 1, n1, n1 + n2);
  }
}

int fib(int n) {
  return _fib(n, 1, 1);
}

int main() {
  int n;
  printf("Enter n: ");
  scanf("%d", &n);
  printf("fib(%d) = %d\n", n, fib(n));
  return 0;
}