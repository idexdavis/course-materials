#include <stdio.h>

int rec_str_cmp(char* str1, char* str2){

  if(*str1 == *str2 && *str1 == '\0'){
    return 0;
  } else if( *str1 != *str2){
    return *str1 - *str2;
  } else{
    return rec_str_cmp(str1 + 1, str2 + 1);
  }
}//rec_str_cmp


int main(int argc, char** argv){

  int comp = rec_str_cmp(argv[1], argv[2]);
  
  if(comp < 0){
    printf("%s comes BEFORE %s\n", argv[1], argv[2]);
  } else if( comp > 0){
    printf("%s comes AFTER %s\n", argv[1], argv[2]);
  } else{
    printf("%s is EQUAL to %s\n", argv[1], argv[2]);
  }
  return 0;
}
