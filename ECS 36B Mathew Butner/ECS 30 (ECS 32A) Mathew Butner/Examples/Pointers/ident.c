#include <stdio.h>
#include <stdlib.h>

int** ident(int size){

  //make the rows
  int** mat = (int**) malloc(size * sizeof(int*));
  int i,j;
  
  for(i = 0; i < size; ++i){
    //make space for the elements in the row
    mat[i] = (int*)malloc(size * sizeof(int));
    for(j = 0; j <size; ++j){
      if(i == j){
        mat[i][j] = 1;
      }
      else{
        mat[i][j] = 0;
      }
    }
  }
  return mat;
}

void delete_mat(int** mat, int num_rows){
  int i;

  for(i =0; i < num_rows; ++i){
    free(mat[i]);
  }
  free(mat);
}

void print_mat(int** mat, int num_rows, int num_cols){
  int i,j;
  
  for(i = 0; i < num_rows; ++i){
    for(j = 0; j < num_cols; ++j){
      printf("%d ", mat[i][j]);
    }
    printf("\n");
  }
}

int main(){

  int** my_mat = ident(7);
  print_mat(my_mat, 7, 7);
  delete_mat(my_mat, 7);
  return 0;
}

