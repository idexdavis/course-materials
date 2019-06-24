#include <stdio.h>
int addOne(int x){
  return x + 1;
}

int main(){
  int a = 10;
  a = addOne(a);
  printf("A is now %d\n", a);
  return 0;
}
