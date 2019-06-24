#include <stdio.h>
#include "stats.h"

int main(){

  double nums[] = {10, 24, 13};
  int size = 3;

  double avg = mean(nums, size);
  printf("The average is %.2lf\n", avg);
  printf("Hi\n");
  
  return 0;
}
