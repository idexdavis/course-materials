#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void fill_random_mat(int mat[][5], int num_rows, int num_cols,
int low, int high){
  for(int row = 0; row < num_rows; ++row) {
    for (int col = 0; col < num_cols; ++col) {
      mat[row][col] = low + rand() % (high - low);
    }
  }
}

void scalar_plus_mat(int scalar, int mat[][5], int num_rows, int num_cols){
  for(int row = 0; row < num_rows; ++row){
    for(int col = 0; col < num_cols; ++col){
      mat[row][col] += scalar;
    }
  }
}

void print_mat(int mat[][5], int num_rows, int num_cols){
  for(int row = 0; row < num_rows; ++row) {
    for (int col = 0; col < num_cols; ++col) {
      printf("%d ", mat[row][col]);
    }
    printf("\n");
  }
}


int main() {

  srand(time(0));
  int mat[4][5];
  fill_random_mat(mat, 4, 5, 0, 100);
  print_mat(mat, 4, 5);
  printf("\n\n");
  scalar_plus_mat(10, mat, 4, 5);
  print_mat(mat, 4, 5);

  return 0;
}