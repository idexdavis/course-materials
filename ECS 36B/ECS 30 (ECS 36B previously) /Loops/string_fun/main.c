#include <stdio.h>
#include <stdbool.h>

int my_strlen(char str[]){
  int pos;
  for(pos = 0; str[pos] != '\0'; pos++){
  }
  return pos;
}

void my_strcpy(char dest[], char src[]){

  for(int pos = 0; true; ++pos){
    dest[pos] = src[pos];
    if(src[pos] == '\0'){
      break;
    }
  }
}

void my_strncpy(char dest[], char src[], int n){
 for(int pos = 0; pos < n; ++pos){
   dest[pos] = src[pos];
   if(src[pos] == '\0'){
     break;
   }
 }
}

void my_strcat(char dest[], char src[]){
  int dest_end = my_strlen(dest);
  for(int i = 0; true; ++i){
    dest[dest_end + i] = src[i];
    if(src[i] == '\0'){
      break;
    }
  }
}

void my_strncat(char dest[], char src[], int n){
  int dest_end = my_strlen(dest);
  for(int i = 0; i < n; ++i){
    dest[dest_end + i] = src[i];
    if(src[i] == '\0'){
      break;
    }
  }
}

int strcmp(char str1[], char str2[]){
  int pos;
  for(pos = 0; !(str1[pos] == '\0' || str2[pos] == '\0');++pos){
    if(str1[pos] != str2[pos]){
      return str1[pos] - str2[pos];
    }
  }
  return str1[pos] - str2[pos];
}




int main() {
  char str = "hi";
  strcmp(str, str);
  return 0;
}