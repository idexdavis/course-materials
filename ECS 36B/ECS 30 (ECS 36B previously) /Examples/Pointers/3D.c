#include <stdlib.h>

int*** make3D(int x, int y, int z){
  int*** triple;
  int i,j;
  triple = (int***)malloc(x * sizeof(int**));
  
  for(i =0; i < x; i++){
    triple[i] = (int**)malloc(y*sizeof(int*));
    for(j = 0; j < y; j++){
      triple[i][j] = (int*)malloc(z*sizeof(int));
    }
  }

  return triple;
}
