#include <stdio.h>



void copy_file(char* src_name, char* dest_name){
  FILE* src = fopen(src_name, "r");

  if(src == NULL){
    printf("Couldn't open file %s\n", src_name);
    return;
  }
  FILE* dest = fopen(dest_name, "w");

  if(dest == NULL){
    printf("Couldn't open file %s\n", dest_name);
    fclose(src);
    return;
  }

  char c;

  fscanf(src, "%c", &c);
  while(!feof(src)){
    fprintf(dest, "%c",c);
    fscanf(src, "%c", &c);
  }

  fclose(src);
  fclose(dest);
}

int main(int argc, char** argv) {
  copy_file(argv[1], argv[2]);
  return 0;
}