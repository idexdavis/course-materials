#include <stdio.h>

int rec_sum(int* nums, int len){
  if( len == 0){
    return 0;
  } else{
   return nums[0] + rec_sum(nums + 1, len - 1);
  }
}

int main() {
  int nums[] = {1, 10, 5, 4, 3};
  int len = 5;
  printf("%d\n", rec_sum(nums, len));
  return 0;
}