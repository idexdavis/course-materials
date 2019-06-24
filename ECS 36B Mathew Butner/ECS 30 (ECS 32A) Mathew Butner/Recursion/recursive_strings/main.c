#include <stdio.h>
//bear
//appl
int rec_strlen(char* str){
  if(str[0] == '\0'){ // empty string
  return 0; // has a length of 1
  }else{ // and a nonempty string
    //is the length of the first character
    // plus the length of the rest of the string
  return 1 + rec_strlen(str + 1);
  }
}

int rec_str_cmp(char* str1, char* str2){
  if(str1[0] == '\0' && str2[0] == '\0'){
    return 0;
  }else if(str1[0] != str2[0]){
    return str1[0] - str2[0];
  }else{
    return rec_str_cmp(str1 + 1, str2 +1);
  }
}

int main() {
  printf("Hello, World!\n");
  return 0;
}