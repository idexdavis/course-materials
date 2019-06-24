#include <stdio.h>
#include <stdlib.h> //calloc, malloc, realloc, NULL

void swap(int* a, int* b);
void freeAndNullify(int** array);
void addComplex(double real1, double img1,
                double real2, double img2,
                double* real_result, double* img_result);
int* add(int a, int b);
int* make_random_array(int len, int min_val, int max_val);
int make_random_int(int min_val, int max_val);
int** make_random_matrix(int num_rows, int num_cols, int min_val, int max_val);

int rec_sum(int* numbers, int len);
void insert(int val, int pos, int** array, int* len);

void transpose(int** mat, int num_rows, int num_cols,
    int*** trans_mat, int* trans_mat_rows, int* trans_mat_cols);
/*
a b c d
e f g h
i j k l

a e i
b f j
c g k
d h l
*/

void setElementIn2DMatrix(int** mat, int i, int j, int val);


void swap(int* a, int* b) {
  int temp = *a;
  *a = *b;
  *b = temp;
}

void freeAndNullify(int** array) {
  free(*array);
  *array = NULL;
}

void addComplex(double real1, double img1, double real2, double img2, double* real_result, double* img_result) {
  *real_result = real1 + real2;
  *img_result = img1 + img2;
}

int* add(int a, int b){
  int sum = a + b;
  return &sum; //bad don't do this. sum is destroyed when function completes
  //so we are returning a pointer to a destroyed object and the result of
  //dereferencing this pointer is undefined
}

int* make_random_array(int len, int min_val, int max_val) {
  int* numbers = (int*)calloc(len, sizeof(*numbers));
  //int numbers[len]; bad numbers would be declared on the stack
  for (int i = 0; i < len; ++i) {
    numbers[i] = make_random_int(min_val, max_val);
    //*(numbers + i) = make_random_int(min_val, max_val);
  }
  return numbers;
}

int make_random_int(int min_val, int max_val) {
  return min_val + rand() % (1 + max_val - min_val);
}

int** make_random_matrix(int num_rows, int num_cols, int min_val, int max_val) {
  int** mat = (int**)calloc(num_rows, sizeof(*mat));
  for (int i = 0; i < num_rows; ++i) {
    mat[i] = make_random_array(num_cols, min_val, max_val);
  }
  return mat;
}

int rec_sum(int* numbers, int len) {
  if(len == 0){
    return 0;
  }else{
    return numbers[0] + rec_sum(numbers + 1 , len - 1);
  }
}

void insert(int val, int pos, int** array, int* len) {
  //made space for the new element
  *len += 1; //(*len)++
  *array = realloc(*array, *len * sizeof(**array));

  //shuffle elements over
  for(int i = *len - 1; i > pos; --i){
    (*array)[i] = (*array)[i-1];
    //*(*array + i)
    //*array[i] == **(array + i)
    // (*array)[i] == *(*array + i)
  }

  (*array)[pos] = val;

}

void transpose(int** mat, int num_rows, int num_cols,
    int*** trans_mat, int* trans_mat_rows, int* trans_mat_cols) {

    *trans_mat_rows = num_cols;
    *trans_mat_cols = num_rows;

    //make space for trans_mat's rows
   *trans_mat = calloc(num_cols, sizeof(**trans_mat));
   int** temp = *trans_mat;

  for (int i = 0; i < num_cols; ++i) {
    (*trans_mat)[i] = calloc(num_rows, sizeof(*(*trans_mat)[i]));
    for(int j = 0; j < num_rows; ++j){
      (*trans_mat)[i][j] = mat[j][i];
    }
  }


}

void setElementIn2DMatrix(int** mat, int i, int j, int val) {
  mat[i][j] = val;
}

int main() {
  int a = 10, b = 20;
  double r1 = 10, r2 = 20, i1 = 5, i2 = 17, rr, ir;
  addComplex(r1, i1, r2, i2, &rr, &ir);
  int* ar = (int*)calloc(5, sizeof(*ar));
  freeAndNullify(&ar);
  ar = NULL;
  swap(&a,&b); // b = 10, a = 20

  printf("Hello, World!\n");
  return 0;
}
