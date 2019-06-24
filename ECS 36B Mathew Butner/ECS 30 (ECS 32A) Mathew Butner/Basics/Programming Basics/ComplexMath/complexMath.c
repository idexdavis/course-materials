#include <stdio.h>
#include <math.h>  // more complex math functions are in here
int main() {
  //sqrt is for square root
  int num = 100;

  printf(" The square root of %d is %lf\n", num, sqrt(num));

  //pow for exponentiation
  int base = 3, power = 2;
  printf("%d ^ %d = %lf\n", base, power, pow(base, power));

  // list of all the functions in math.h can be found at: http://www.cplusplus.com/reference/cmath/?kw=math.h


  return 0;
}