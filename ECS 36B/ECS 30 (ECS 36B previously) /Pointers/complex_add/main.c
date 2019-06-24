#include <stdio.h>

void add_complex(int real1, int img1,
                 int real2, int img2,
                 int* realOut, int* imgOut);

void add_complex(int real1, int img1,
                 int real2, int img2,
                 int* realOut, int* imgOut){
  *realOut = real1 + real2;
  *imgOut = img1 + img2;
}


int main() { //
  int real1 = 10, img1 = 20;
  int real2 = 25, img2 = -3;
  int real_res, img_res;
  add_complex(real1, img1, real2, img2, &real_res, &img_res);
  printf("(%d + %di) + (%d + %di) = %d + %di\n", real1, img1,
  real2, img2, real_res, img_res);

  return 0;
}