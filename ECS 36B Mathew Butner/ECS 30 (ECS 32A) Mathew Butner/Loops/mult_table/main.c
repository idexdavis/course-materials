#include <stdio.h>

void print_mult_table(int num_rows, int num_cols);
void print_mult_table(int num_rows, int num_cols) {

  for (int row = 1; row <= num_rows; ++row) {
    for (int col = 1; col <= num_cols; ++col) {
      printf("%3d ", row * col);
    }
    printf("\n");
  }


}

int main() {
  int num_rows, num_cols;

  printf("Enter the number of rows: ");
  scanf("%d", &num_rows);
  printf("Enter the number of columns: ");
  scanf("%d", &num_cols);
  print_mult_table(num_rows, num_cols);

  return 0;
}