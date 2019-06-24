#include <stdio.h>
#include <stdarg.h>

double anyArgsSum(int numNums, ...){
  double sum = 0.0;
  va_list args;
  va_start(args, numNums);

  for (int i = 0; i < numNums; ++i) {
    sum += va_arg(args, double);
  }

  va_end(args);
  return sum;
}

int main() {
  printf("The sum is %.2lf\n",  anyArgsSum(3, 12.0, 9.0, 8.0));
  return 0;
}