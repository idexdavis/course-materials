#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void* my_mem_cpy(void* dest, void* src, int size);

int main(int argc, char** argv){
  int len = strlen(argv[1]);
  char* str2 = (char*)malloc((len+1) *sizeof(char));
  
  my_mem_cpy(str2, argv[1], len + 1);
 
  printf("%s\n", str2);
 
  free(str2);
  return 0;
}
