//
// Created by mfbut on 1/5/2018.
//



#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

int min_index_of_array(int* ar, int len){

  int min_index = 0;

  for(int i = 1; i < len; ++i){
    if(ar[i] < ar[min_index]){
      min_index = i;
    }
  }
  return min_index;
}

void swap(int* a, int* b){

  int temp = *a;
  *a = *b;
  *b = temp;
}

int* get_sorted(int* ar, int len){

  int* sorted_ar = (int*)malloc(len * sizeof(int));

  for(int i = 0; i < len; ++i){
    int min_index = min_index_of_array(ar + i, len - i);
    sorted_ar[i] = ar[min_index + i];
    swap(ar + i, ar + min_index + i);
  }
  return sorted_ar;
}

void print_ar(int* ar, int len){
  for(int i = 0; i < len; ++i){
    printf("%d ", ar[i]);
  }

  printf("\n");
}

void parse_args(int argc, char* argv[], int** ar, int* len){

  *len = argc - 1;
  *ar = (int*)malloc(*len * sizeof(int));
  for(int i = 0; i < *len; ++i){
    sscanf(argv[i+1], "%d", &(*ar)[i]);
  }

}

int main(int argc, char* argv[]){

  int* ar;
  int len;
  parse_args(argc, argv, &ar, &len);
  int* sorted_ar = get_sorted(ar, len);
  print_ar(sorted_ar, len);

  free(ar);
  free(sorted_ar);
  return 0;

}


