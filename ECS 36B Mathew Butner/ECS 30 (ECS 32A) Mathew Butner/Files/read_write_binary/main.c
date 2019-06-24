#include <stdio.h>

void write_ints_to_file(int* nums, const int size, char* file_name){
  FILE* file = fopen(file_name, "wb");

  if(file == NULL){
    printf("Couldn't open file %s\n", file_name);
    return;
  }

  fwrite(nums, sizeof(int), size, file);

  fclose(file);
}

void print_bin_int_file(char* file_name){
  FILE* file = fopen(file_name, "rb");

  if(file == NULL){
    printf("Couldn't open file %s\n", file_name);
    return;
  }

  int num;

  fread(&num, sizeof(int), 1, file);
  while( !feof(file)){
    printf("%d\n", num);
    fread(&num, sizeof(int), 1, file);
  }
  fclose(file);

}

int main(int argc, char** argv) {

  int nums[] = {1,2,3,4,5};
  write_ints_to_file(nums, 5, argv[1]);
  print_bin_int_file(argv[1]);
  return 0;
}