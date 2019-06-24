#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include <string.h>

char* captialize(char* str){
  int size = strlen(str);
  char* capital_str = (char*)malloc((size+1) * sizeof(char));

  for(int i = 0; i <= size; ++i){
    capital_str[i] = toupper(str[i]);
  }
  return capital_str;
 }

int main() {
  char str1[50];
  printf("Enter a string: ");
  scanf("%s", str1);

  char* upper_str = captialize(str1);
  printf("%s\n", upper_str);

  free(upper_str);

  return 0;
}