#include <stdio.h>

int bigger(int a, int b){
  if( a > b)
    return a;
  else
    return b;
}

int max(int* nums, int len){
  if(len == 1){
    return *nums;
  } else{
    return bigger(*nums, max(nums + 1, len - 1));
  }
}

int main(){
  int nums[] = {100, 1, 500, -20, 66, 42};
  int len = 6;

  printf("%d\n", max(nums, len));
  return 0;
  
}
