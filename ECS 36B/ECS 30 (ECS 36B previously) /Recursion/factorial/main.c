#include <stdio.h>
//n! = n * (n-1)!
//5! = 5 * 4!
// 4! = 4 * 3!
// 3! = 3 * 2!
int factorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

int main() {
  int n;
  printf("Enter a value for n: ");
  scanf("%d", &n);
  printf("%d! = %d", n, factorial(n));

  return 0;
}