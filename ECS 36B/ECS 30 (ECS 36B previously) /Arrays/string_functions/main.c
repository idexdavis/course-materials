#include <stdio.h>
#include <stdbool.h>
#include <ctype.h>

int my_strlen(char* str);

void my_strcpy(char dest[], char src[]);
void my_strncpy(char dest[], char src[], int n);
void my_strcat(char dest[], char src[]);


int my_strlen(char* str){
  int len = 0, i = 0;
  for(len = 0; str[len] != '\0'; ++len){}
  return len;
  //alternate version
  while(str[i] != '\0'){
    ++i;
  }
  return i;
}

void my_strcpy(char dest[], char src[]){
  int i = 0;
  for (i = 0; src[i] != '\0'; ++i) {
    dest[i] = src[i];
  }
  dest[i] = src[i];
  dest[i] = '\0';
}

void my_strncpy(char dest[], char src[], int n) {
  for (int i = 0; i < n; ++i) {
    dest[i] = src[i];
    if(src[i] == '\0'){
      break;
    }
  }
}

void strcpy_at(char dest[], char src[], int srcStart, int destStart) {
  int destI = destStart;
  for (int srcI = srcStart; src[srcI] != '\0' ; ++srcI, ++destI) {
    dest[destI] = src[srcI];
  }
  dest[destI] = '\0';
}

void my_strcat(char dest[], char src[]){
  int dest_len = my_strlen(dest);
  strcpy_at(dest, src, 0, dest_len);
}

void my_strncat(char dest[], char src[], int n){
  int dest_len = my_strlen(dest);
  int i;
  for (i = 0; i < n; ++i) {
    dest[dest_len + i] = src[i];
    if(src[i] == '\0'){
      break;
    }
  }
  dest[dest_len +i] = '\0';
}

int my_strcmp(char str1[], char str2[]){
  for (int i = 0; true; ++i) {
    if(str1[i] < str2[i]){
      return -1;
    }else if(str1[i] > str2[i]){
      return 1;
    } else if (str1[i] == '\0'){
      return 0;
    }
  }
}
int my_strcmp2(char str1[], char str2[]) {

  for (int i = 0; true; ++i) {
    if (str1[i] != str2[i]) {
      return str1[i] - str2[i];
    } else if (str1[i] == '\0') {
      return 0;
    }
  }
}

void makeUpperStr(char str[]){
  for (int i = 0; str[i] != '\0'; ++i) {
    str[i] = toupper(str[i]);
  }
}

int getIndexLongestStr(char strings[][50], int num_strings){
  int longLen = my_strlen(strings[0]);
  int longIndex = 0;

  for (int i = 1; i < num_strings; ++i) {
    if(my_strlen(strings[i]) > longLen){
      longLen = my_strlen(strings[i]);
      longIndex = i;
    }
  }
  return longIndex;
}

int main() {
  char str1[50];
  char str2[50];
  char strs[5][50];

  my_strcpy(strs[0], "cat");
  my_strcpy(strs[1], "potato");
  my_strcpy(strs[2], "shrimpmeat");

  printf("The longest string is %s\n", strs[getIndexLongestStr(strs, 3)]);

  int n;
  printf("Enter a string: ");
  scanf("%s", str1);

  printf("Enter n: ");
  scanf("%d", &n);

  my_strncpy(str2, str1, n);
  str2[49] = '\0';
  printf("The first n characters are %s\n", str2);

  return 0;
}