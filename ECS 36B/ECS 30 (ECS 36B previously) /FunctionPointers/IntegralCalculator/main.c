#include <stdio.h>

double constant5(double x);
double line1(double x);
double line2(double x);
double appoximateIntegral(double start, double end, double step, double (*fun)(double));

double appoximateIntegral(double start, double end, double step, double (* fun)(double)) {
  double area = 0;
  for (double x = start; x < end;  x+= step) {
    area += fun(x) * step;
  }
  return area;
}

double constant5(double x) {
  return 5;
}
//represents the line y = 2*x + 5
double line1(double x) {
  return 2*x + 5;
}

//-x
double line2(double x) {
  return -x;
}

int main() {
  printf("The area is %.2lf\n", appoximateIntegral(0,5,.001, constant5));
  printf("The area is %.2lf\n", appoximateIntegral(0,5,.001, line1));
  printf("The area is %.2lf\n", appoximateIntegral(0,5,.001, line2));
  return 0;
}