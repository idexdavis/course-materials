#include <stdio.h>
#include <stdlib.h>

int** makeMultTable(int numRows, int numColumns);
void makeMultTableAlt(int numRows, int numColumns, int*** multTable);
void deleteMatrix(int*** matrix, int numRows);

int** makeMultTable(int numRows, int numColumns) {
  //make space for the table
  // rows, then columns
  int** multTable = (int**) malloc(numRows * sizeof(int*));

  for (int row = 0; row < numRows; ++row) {
    multTable[row] = (int*) malloc(numColumns * sizeof(int));
    for (int col = 0; col < numColumns; ++col) {
      multTable[row][col] = (row + 1) * (col + 1);
    }
  }
  return multTable;
}

void makeMultTableAlt(int numRows, int numColumns, int*** multTable){
  *multTable = (int**) malloc(numRows * sizeof(int*));

  for (int row = 0; row < numRows; ++row) {
    (*multTable)[row] = (int*) malloc(numColumns * sizeof(int));
    for (int col = 0; col < numColumns; ++col) {
      (*multTable)[row][col] = (row + 1) * (col + 1);
    }
  }
}

void deleteMatrix(int*** matrix, int numRows) {
  for (int row = 0; row < numRows; ++row) {
    free((*matrix)[row]);
  }
  free(*matrix);
  *matrix = NULL;
}

void printMatrix(int** matrix, int numRows, int numCols){
  for (int row = 0; row < numRows; ++row) {
    for (int col = 0; col < numCols; ++col) {
      printf("%3d ", matrix[row][col]);
    }
    printf("\n");
  }
}

void constPrintArray(const int *const ar, const int size){
  for (int i = 0; i < size; ++i) {
    printf("%d ", ar[i]);
  }
}


  void const2dPrinter(const int *const *const mat, const int numRows, const int numCols){
  for (int i = 0; i < numRows; ++i) {
    constPrintArray(mat[i], numCols);
    printf("\n");
  }
}

int main() {
  int** mat1;
  int** mat2;

  int numRows, numCols;
  printf("Please enter the number of rows: ");
  scanf("%d", &numRows);
  printf("Please enter the number of columns: ");
  scanf("%d", &numCols);



  mat1 = makeMultTable(numRows, numCols);
  makeMultTableAlt(numRows, numCols, &mat2);
  printMatrix(mat1, numRows, numCols);
  printf("\n");
  constPrintArray(mat1[0], numCols); printf("\n");
  const2dPrinter((const int* const* const) mat2, numRows, numCols);

  deleteMatrix(&mat1, numRows);
  deleteMatrix(&mat2, numRows);

  return 0;
}