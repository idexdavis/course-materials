#include <stdio.h>
#include <stdlib.h>

typedef enum{INT, DOUBLE, CHAR} VarType;

void multi_print(VarType vtype, void* var){
  if(vtype == INT){
    int* x = (int*)var;
    printf("Variable has the value %d\n", *x);
  }else if(vtype == DOUBLE){
    double* x = (double*)var;
    printf("Variable has the value %lf\n", *x);
  } else if(vtype == CHAR) {
    char* x = (char*)var;
    printf("Variable has the value %c\n", *x);
  } else{
    printf("The world has ended\n");

  }
}

int main() {
  int a = 10;
  double d = 25.26;
  char c = 'Z';
  multi_print(INT, &a);
  multi_print(DOUBLE, &d);
  multi_print(CHAR, &c);

  return 0;
}