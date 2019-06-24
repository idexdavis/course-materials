#include <stdio.h>
#include <math.h>

#define get_point(x, y)\
printf("Enter a point in the form x y: ");\
scanf("%lf %lf", &x, &y);

double distance(double x1, double y1, double x2, double y2);
double perimeter(double x1, double y1, double x2, double y2, double x3, double y3, double x4, double y4);


double perimeter(double x1, double y1, double x2, double y2, double x3, double y3, double x4, double y4) {
  double distance1_2 = distance(x1, y1, x2, y2);
  double distance2_3 = distance(x2, y2, x3, y3);
  double distance3_4 = distance(x3, y3, x4, y4);
  double distance4_1 = distance(x4, y4, x1, y1);

  return distance1_2 + distance2_3 + distance3_4 + distance4_1;

}

double distance(double x1, double y1, double x2, double y2) {
  return sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2));
}

int main() {
  double x1, y1;
  double x2, y2;
  double x3, y3;
  double x4, y4;
  double the_perimeter;
  //get vertex 1
  get_point(x1, y1);
  /* get_point(x1, y1) expands to
  printf("Enter a point in the form x y: ");\
  scanf("%lf %lf", &x1, &y1);
  */

  //get vertex 2
  get_point(x2, y2);
  /* get_point(x1, y1) expands to
  printf("Enter a point in the form x y: ");\
  scanf("%lf %lf", &x2, &y2);
  */

  //get vertex 3
  get_point(x3, y3);

  //get vertex 4
  get_point(x4, y4);

  //find the perimeter
  the_perimeter = perimeter(x1, x2, y1, y2, x3, y3, x4, y4);

  //display the results
  printf("The distance between (%.2lf, %.2lf) and (%.2lf, %.2lf) is %.2lf\n", x1, y1, x2, y2, the_perimeter);
  return 0;
}