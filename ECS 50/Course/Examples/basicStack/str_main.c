
#include <stdio.h>

int my_strlen(char* str);

int main(int argc, char** argv){
  printf("The length of %s is %d\n", argv[1], my_strlen(argv[1]));
  return 0;
}
