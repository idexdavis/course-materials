#include <stdio.h>
#include <stdlib.h>

void swap(int* a, int* b){
  int temp = *a;
  *a = *b;
  *b = temp;
}

void swapPointer(int** a, int** b){
  int* temp = *a;
  *a = *b;
  *b = temp;
}


int main() {
  int* ar1 = (int*)malloc(20*sizeof(int));
  int* ar2 = (int*)malloc(10 *sizeof(int));
  swapPointer(&ar1, &ar2);
  int a = 10, b = 5;
  printf("a = %d, b = %d\n", a, b);

  swap(&a, &b);
  printf("a = %d, b = %d\n", a, b);

  return 0;
}