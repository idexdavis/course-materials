#include <stdio.h>

int fib(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return fib(n - 1) + fib(n - 2);
  }
}

int main() {
  int n;
  printf("Enter n: ");
  scanf("%d", &n);
  printf("fib(%d) = %d\n", n, fib(n));
  return 0;
}