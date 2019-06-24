#include <stdio.h>
#include <string.h>

void makeMultTable(int table[][15], int numRows, int numCols){
  for(int row = 0; row < numRows; ++row){
    for (int col = 0; col < numCols; ++col){
      table[row][col] = (row + 1) * (col + 1);
    }
  }
}

void printMatrix(int mat[][15], int numRows, int numCols){
  char strNum[20];
  sprintf(strNum, "%d", mat[numRows-1][numCols-1]);
  int long_len = strlen(strNum);
  for (int row = 0; row < numRows; ++row) {
    for(int col = 0; col < numCols; ++col){
      printf("%*d ", long_len, mat[row][col]);
    }
    printf("\n");
  }
}


int main() {
  int multTable[50][15];
  makeMultTable(multTable, 9, 9);
  printMatrix(multTable, 9, 9);
  return 0;
}