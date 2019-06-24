#include <stdio.h>
#include <stdlib.h>

int* make_random_array(const int size, const int min_val, const int max_val);
void print_array(const int* ar, const int size);
int* append(const int val, int** ar, int* size);
int* prepend(const int val, int** ar, int* size);
int find(const int val, const int* ar, const int size);
void my_remove(const int val, int** ar, int* size);


/**
 * Make a random array of integers size big
 * where values are between min_val and max_val
 * @param size
 * @param min_val
 * @param max_val
 * @return
 */
int* make_random_array(const int size, const int min_val, const int max_val) {
  int* ar = (int*)malloc(size * sizeof(int));

  for(int i = 0; i < size; ++i){
    ar[i] = min_val + rand() % (max_val - min_val);
  }
  return ar;
}

void print_array(const int* ar, const int size){
  for(int i = 0; i < size; ++i){
    printf("%d ", ar[i]);
  }
  printf("\n");
}

int* append(const int val, int** ar, int* size) {
  // make space for the element
  *ar = (int*)realloc(*ar, (*size + 1) * sizeof(int));
  // yes all of the () are needed here
  // both [] and ++ have higher precedence then *
  // but we want to do the dereference first so we use the ()
  (*ar)[*size] = val;  // put it in
  (*size)++; // one more element in the array
  return *ar;
}

//[1, 10, 4, 3]
//prepend 17
//[1, 10, 4, 3, ?]
//[1, 10, 4, 3, 3]
//[1, 10, 4, 4, 3]
//[1, 10, 10, 4, 3]
//[1, 1, 10, 4, 3]
//[17, 1, 10, 4, 3]
int* prepend(const int val, int** ar, int* size) {
  *ar = (int*)realloc(*ar, (*size + 1) * sizeof(int));

  // shuffle all of the elements over
  for(int i = *size; i > 0; --i){
    (*ar)[i] = (*ar)[i-1];
  }
  // put the element in
  (*ar)[0] = val;
  (*size)++;
  return *ar;
}

/**
 * Return the index of val in ar or -1 if val is not found
 * @param val
 * @param ar
 * @param size
 * @return
 */
int find(const int val, const int* ar, const int size) {
  for(int i = 0; i < size; ++i){
    if(ar[i] == val){
      return i;
    }
  }
  return -1;
}

/**
 * Remove the first occurrence of value from the array
 * @param val
 * @param ar
 * @param size
 */
void my_remove(const int val, int** ar, int* size) {

  int pos = find(val, *ar, *size);

  if(pos == -1){ // value not in array
    return; // nothing to do
  }

  // shuffle over
  for(int i = pos; i < *size - 1; ++i){
    (*ar)[i] = (*ar)[i+1];
  }

  // shrink the array
  (*size)--;
  *ar = (int*)realloc(*ar, (*size) * sizeof(int));

}


int main() {
  int size = 10;
  int* ar = make_random_array(10, 10, 50);
  print_array(ar, size);

  ar = append(17, &ar, &size);
  print_array(ar, size);

  ar = append(25, &ar, &size);
  print_array(ar, size);

  ar = prepend(1, &ar, &size);
  print_array(ar, size);

  ar = prepend(1, &ar, &size);
  print_array(ar, size);

  ar = prepend(2, &ar, &size);
  print_array(ar, size);

  my_remove(ar[2], &ar, &size);
  print_array(ar, size);

  my_remove(ar[2], &ar, &size);
  print_array(ar, size);

  free(ar);
  return 0;
}