#include <stdio.h>
#include <stdlib.h>

void _print_permuatations(int* items, int len, int* cur_perm, int perm_len);
/* 1 2 3
 *
 * 1 2 3
 * 1 3 2
 * 2 1 3
 * 2 3 1
 * 3 1 2
 * 3 2 1
 *
 * Base case no items
 *   print ans
 * Recursive case
 *   pick an item
 *   permute the on all the items that I haven't picked
 */

void print_permutations(int* items, int len){
  int* cur_perm = (int*)malloc(len * sizeof(int));
  _print_permuatations(items, len, cur_perm, len);
  free(cur_perm);
}
void print_ar(int* ar, int len) {
  for (int i = 0; i < len; ++i) {
    printf("%d ", ar[i]);
  }
  printf("\n");
}

int pop(int* ar, int size, int pos2remove){
  int to_remove = ar[pos2remove];

  for(int i = pos2remove; i < size - 1; ++i){
    ar[i] = ar[i +1];
  }
  return to_remove;
}
// 0 1 2 3 4 5
// a b c d e
// a b c d e e
// a b c d d e
// a b c c d e
//insert z at 2
void insert(int item, int* ar, int size, int position){

  for(int i = size; i > position; --i){
    ar[i] = ar[i -1];
  }
  ar[position] = item;
}

void _print_permuatations(int* items, int len, int* cur_perm, int perm_len) {
  int picked;
  if(len == 0){
    print_ar(cur_perm, perm_len);
  }else{
    for(int i = 0; i < len; ++i){
      picked = pop(items, len, i);
      cur_perm[perm_len - len] = picked;
      _print_permuatations(items, len - 1, cur_perm, perm_len);
      insert(picked, items, len-1, i);
    }
  }

}

int main() {
  int items[] = {1,2,3};
  int len = 3;
  print_permutations(items, len);
  return 0;
}