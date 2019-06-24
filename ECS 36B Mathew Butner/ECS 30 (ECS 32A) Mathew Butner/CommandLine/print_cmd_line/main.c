#include <stdio.h>
int main(int argc, char* argv[]){
  //argc is the number of command line arguments that were entered
  //argv are the actual command line arguments
  //it is an array of strings because everything can
  //be represented with strings

  int i;
  for(i = 0; i < argc; ++i){
    printf("The %dth command line argument is %s.\n", i, argv[i]);
  }

  return 0;
}
