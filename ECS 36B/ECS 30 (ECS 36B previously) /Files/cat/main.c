#include <stdio.h>

void cat(char* file_name){
  FILE* file = fopen(file_name, "r");

  if(file == NULL){
    printf("Could not open %s\n", file_name);
    return;
  }

  char c;
  fscanf(file, "%c", &c);
  while(!feof(file)){
    printf("%c", c);
    fscanf(file, "%c", &c);
  }
  fclose(file);

}

int main(int argc, char** argv) {
  cat(argv[1]);
  return 0;
}