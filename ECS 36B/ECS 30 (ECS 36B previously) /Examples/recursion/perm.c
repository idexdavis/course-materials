#include <stdio.h>
void _perm(int* to_permute, int len, int* current_perm, int max_len);


void perm(int* list, int len){
  //this function will be the outward facing interface
  //for people to call
  //no one else besideds this function should call _perm
  //@list: the list of numbers to be permuted.
  //@len the number of elements in the list
  
  _perm(list, len, list, len);
}

void swap(int* a, int* b){
  //swap the values stored in a and b
  int temp;
  temp = *a;
  *a = *b;
  *b = temp;
}

void print_ar(int* ar, int len){
  int i;
  for(i = 0; i < len; i++){
    printf("%d ", ar[i]); 
  }
}

void _perm(int* to_permute, int len, int* current_perm, int max_len){
  //@to_permute: the list of items to be permuted
  //@len: the number of elements in to_permute
  //@current_perm: the list containing the current permutation we are working on
  //@max_len: the total number of elements in the original list
  int i;
  
  if(len == 0){ //base case empty list
    printf("Empty List\n");
  }
  else if(len == 1){ //base case: one element
    //just print the result
    for(i = 0; i < max_len; i++){
      printf("%d ", current_perm[i]);
    }
    printf("\n");
  }
  else{
    for(i = 0; i < len; i++){//for each element in the list
      
      swap(to_permute, to_permute + i); //pick an element
      _perm(to_permute + 1, len -1, current_perm, max_len); //permute the rest
      swap(to_permute, to_permute+i);//restore the element to its original location
    }
  }
}

int main(){
  int nums[] = {1,2,3,4,5};
  perm(nums, 3);
  return 0;
}

