#include <stdio.h>
#include <stdlib.h>

void print_ar(int* ar, int len);
void _combs(int* list, int len, int k, int* cur_comb, int max_k);


void print_ar(int* ar, int len){
  //print the elements of an array of length len
  int i;
  for(i = 0; i < len; i++){
    printf("%d ", ar[i]); 
  }
}


void combs(int* list, int len, int k){
  //the outward facing function that should be called
  //prints out all of the combinations of list taken k at a time
  //@list: the list of elements
  //@len: the number of elements in the list
  //@k: the number of elements per combination
  int* cur_comb;
  if(k > len){
    printf("Empty List\n");
  } else{
    cur_comb = (int*) malloc(k*sizeof(int)); //make space for a combination
    _combs(list, len, k, cur_comb, k); //create the combinations
    free(cur_comb);//free up the space malloced
   }
}

void _combs(int* list, int len, int k, int* cur_comb, int max_k){
  int i;
  
  if(k == 0){ //if k is 0 we have completed a combination
    print_ar(cur_comb, max_k); //so display it
    printf("\n");
  }
  else if(k > len){ //not enough elements to complete the combination
    return;
  }else{
    for(i = 0; i < len; i++){ //for each element in the list
      cur_comb[max_k - k] = list[i];//add it to our current combination
      _combs(list + i + 1, len - i - 1,  k - 1, cur_comb, max_k); //create a combination of the rest
    }
  
  }
}//_combs

int main(){
  int nums[] = {1,2,3,4,5};
  combs(nums, 5, 3);
  return 0;
}

