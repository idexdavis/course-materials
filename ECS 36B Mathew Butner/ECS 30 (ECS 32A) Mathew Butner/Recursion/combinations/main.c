#include <stdio.h>
#include <stdlib.h>

void _print_combs(int* items, int len, int k, int* cur_comb, int comb_len);
/* 0 1 2 3 4
 * 1 2 3 4 5 | k = 3
 * 1 2 3
 * 1 2 4
 * 1 2 5
 * 1 3 4
 * 1 3 5
 * 1 4 5
 *
 * 2 3 4
 * 2 3 5
 * 2 4 5
 *
 * 3 4 5
 * base case If k == 0
 *   empty list
 * base case if k > number of elements
 *  can't do this
 * recursive case
 *  pick an item
 *  find a combination of size k-1 from among the items that come after
 */

void print_combs(int* items, int len, int k){

  int* cur_comb = (int*)malloc(k * sizeof(int));

  _print_combs(items, len, k, cur_comb, k);
  free(cur_comb);
}

void print_ar(int* ar, int len);
void _print_combs(int* items, int len, int k, int* cur_comb, int comb_len) {

  if(k == 0){
    print_ar(cur_comb, comb_len);
  } else if( k > len){
    return;
  }else{
    for (int i = 0; i < len; ++i) {
      // add item i to the combination
      cur_comb[comb_len - k] = items[i];
      _print_combs(items + i + 1, len - i - 1,k - 1, cur_comb, comb_len);
    }
  }
}
void print_ar(int* ar, int len) {
  for (int i = 0; i < len; ++i) {
    printf("%d ", ar[i]);
  }
  printf("\n");
}

int main() {
  int items[] = {1,2,3,4,5};
  int k = 3;
  int len = 5;
  print_combs(items, len, k);
  return 0;
}