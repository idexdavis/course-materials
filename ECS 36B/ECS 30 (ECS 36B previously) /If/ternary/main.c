#include <stdio.h>

int main() {
  int x = 12;
  int y = x > 9 ? 50 : 100;
  
  if(x > 9){
    y = 50;
  } else {
    y = 100;
  }
  return 0;
}