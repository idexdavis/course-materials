#include <stdio.h>
#include <stdbool.h>

bool all(bool values[], int len);
bool any(bool values[], int len);



bool all(bool values[], int len) {
  for (int i = 0; i < len; ++i) {
    if(values[i] == false){ //!values[i]
      return false;
    }
  }
  return true;
}


bool any(bool values[], int len) {
  for (int i = 0; i < len; ++i) {
    if(values[i]){
      return true;
    }
  }
  return false;
}

bool allPositive(int nums[], int len){
  for (int i = 0; i < len; ++i) {
    if(nums[i] <= 0 ){
      return false;
    }
  }
  return true;
}

bool anyPositive(int nums[], int len){
  for (int i = 0; i < len; ++i) {
    if(nums[i] > 0 ){
      return true;
    }
  }
  return false;
}

int main() {
  printf("Hello, World!\n");
  return 0;
}