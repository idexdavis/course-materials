#include <stdio.h>

int main() {
  double x1, y1;
  double x2, y2;
  double xSum, ySum;
  // get vectors
  printf("Please enter a vector in the form x , y: ");
  scanf("%lf , %lf", &x1, &y1);

  printf("Please enter a vector in the form x , y: ");
  scanf("%lf , %lf", &x2, &y2);

  xSum = x1 + x2;
  ySum = y1 + y2;

  printf("%.2lf,%.2lf + %.2lf,%.2lf = %.2lf,%.2lf\n",
  x1,y1,
  x2, y2,
  xSum, ySum);

  return 0;
}