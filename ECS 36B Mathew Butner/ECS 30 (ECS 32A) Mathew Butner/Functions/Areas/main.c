#include <stdio.h>

double getRectangleArea(const double width, const double height);
double getTriangleArea(const double base, const double height);
double getTrapezoidArea(const double longSide,
const double shortSide, const double height);

double getTrapezoidArea(const double longSide,
                        const double shortSide, const double height){
  double rect_area = getRectangleArea(shortSide, height);
  double tri_area = getTriangleArea((longSide - shortSide)/2.0, height);
  return rect_area + tri_area * 2;
}

double getRectangleArea(const double width, const double height){
  double rectAngleArea = width * height;
  return rectAngleArea;
  printf("Butts\n");
}

double getTriangleArea(const double base, const double height){
  return getRectangleArea(base, height) / 2;
}


int main() {
  double width, height;
  double rectangleArea, triangleArea;

  printf("Enter the width of the rectangle: ");
  scanf("%lf", &width);
  printf("Enter the height of the rectangle: ");
  scanf("%lf", &height);

  rectangleArea = getRectangleArea(width, height);

  printf("The area of the rectangle is %.2lf\n", rectangleArea);

  triangleArea = getTriangleArea(width, height);
  printf("The area of a triangle with the same "
             "dimesnions is: %.2lf\n", triangleArea);

  return 0;
}