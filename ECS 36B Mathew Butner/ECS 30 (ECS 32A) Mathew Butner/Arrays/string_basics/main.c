#include <stdio.h>
#include <string.h>
int main() {
  char name1[50];
  char name2[50];
  char name3[50];

  printf("Enter your name1: ");
  scanf("%s", name1); //notice no & on name1

  printf("Your name1 is %s\n", name1);

  // strlen gives you the number of characters in a string
  printf("There are %d letters in your name1\n", strlen(name1));

  //strcpy is used to copy a string
  strcpy(name2, name1);

  printf("Your name copied is %s\n", name2);

  // copy at most n characters
  strncpy(name2, name1, 49);
  //if n are copied then the null character isn't added
  //so make sure to add it in
  name2[49] = '\0';

  printf("Your name strn copied is %s\n", name2);

  strncpy(name3, name1, 4);
  name3[4] = '\0';
  printf("The first 4 letters of your name are %s\n", name3);

  printf("Enter your friends name ");
  scanf("%s", name2);
  strcat(name1," and ");
  strcat(name1, name2);

  printf("%s are friends\n", name1);





  return 0;

}