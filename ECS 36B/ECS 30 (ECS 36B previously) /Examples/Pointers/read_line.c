#include <stdio.h>
#include <stdlib.h>

char* my_readline(){
  char* line = NULL;
  char c;
  int len = 0;
  
  do{
    scanf("%c", &c);
    len++;
    line = (char*) realloc(line, len *sizeof(char));
    line[len - 1] = c;
  } while(c != '\n');
  
  /*include newline
  len++;
  line = (char*) realloc(line, len *sizeof(char));
  line[len-1] = '\0';
  */
  
  //don't include newline
  line[len-1] = '\0';
  return line;
}


char* better_readline(){
  char* line = (char*) malloc(sizeof(char));
  int size = 1;
  int num_chars = 0;
  
  do{
    scanf("%c", &line[num_chars]);
    num_chars++;
    
    if(num_chars == size){
      size *= 2;
      line = (char*)realloc(line, size * sizeof(char));
    }
  
  }while(line[num_chars -1] != '\n');
  
  line[num_chars-1] = '\0';

  //shrink to fit only the number of characters entered
  line = (char*)realloc(line, num_chars * sizeof(char));
  return line;
}


int main(){

  char* str1;
  char* str2;
  
  printf("Enter a string: ");
  str1 = my_readline();
  printf("You entered %s\n", str1);
  
  
  printf("Enter a string: ");
  str2= better_readline();
  printf("You entered %s\n", str2);
  
  free(str1);
  free(str2);

  return 0;
}
