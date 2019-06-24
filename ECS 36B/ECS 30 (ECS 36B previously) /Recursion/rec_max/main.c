#include <stdio.h>

int bigger(int x, int y){
  if(x > y){
    return x;
  } else{
    return y;
  }
}

// 5, 22, -3, 7
int rec_max(int* nums, int len){
  if(len == 1){
    return nums[0];
  }else{
    return bigger(nums[0], rec_max(nums + 1, len - 1));
  }
}

int main() {
  int len = 6;
  int nums[] = {144, 69, 42, -12, 420, 17};
  printf("%d\n", rec_max(nums, len));
  return 0;
}