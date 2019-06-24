#include <stdio.h>
#include <math.h>

#define get_point(x, y)\
printf("Enter a point in the form x y: ");\
scanf("%lf %lf", &x, &y);

double distance(double x1, double y1, double x2, double y2) {
  return sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2));
}

int main() {
  double x1, y1;
  double x2, y2;
  double the_distance;
  //get point 1
  get_point(x1, y1);
  /* get_point(x1, y1) expands to
  printf("Enter a point in the form x y: ");\
  scanf("%lf %lf", &x1, &y1);
  */

  //get point 2
  get_point(x2, y2);
  /* get_point(x1, y1) expands to
  printf("Enter a point in the form x y: ");\
  scanf("%lf %lf", &x2, &y2);
  */

  //find the distance
  the_distance = distance(x1, y1, x2, y2);

  //display the results
  printf("The distance between (%.2lf, %.2lf) and (%.2lf, %.2lf) is %.2lf\n", x1, y1, x2, y2, the_distance);
  return 0;
}