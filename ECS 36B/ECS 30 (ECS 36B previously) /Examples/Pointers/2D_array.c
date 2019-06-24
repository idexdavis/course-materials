#include <stdlib.h>

foo(int** ar)
ar2[10][10]
foo(ar2)

int main(){
  int** ar;
  int rows = 10;
  int cols = 5;
  int i,j;
  
  ar = (int**)malloc(rows*sizeof(int*));
  
  for(i =0; i < rows; i++){
    ar[i] = (int*)malloc(cols*sizeof(int));
  }

  for(i =0; i < rows; i++){
    for(j = 0; j < cols; j++){
      ar[i][j] = i*j;
    }

  for(i =0; i < rows; i++){
    free(ar[i])
  }
  
  free(ar);
}
