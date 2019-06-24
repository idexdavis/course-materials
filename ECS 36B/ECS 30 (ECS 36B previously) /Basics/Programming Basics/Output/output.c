#include <stdio.h>

int main() {
  // printf is the function for outputting text to the screen
  // the text must be in a format string
  printf("Look at my string\n");

  //some special characters
  //notice that the forward slash either adds or removes special meaning to the character that comes after
  printf("A new line: \n");
  printf("A tab: \t \n");
  printf("A single forward slash: \\ \n");  // a single forward slash
  printf("a / ins't special \n"); // this /
  printf("A double quote: \" \n"); // a single "
  printf("A single percent sign: %% \n");

  //for printing variables or values we have to put format placeholders in our string
  int aInt = 10;
  float aFloat = 12.9;
  double aDouble = 25.2584;
  char aChar = 'Z';

  printf("Printing out an integer: %d\n", aInt);
  printf("Printing out a float: %f\n", aFloat);
  printf("Printing out a double: %lf\n", aDouble);
  printf("Printing out a character: %c\n", aChar);

  //we can print out multiple variables in a single print statement
  printf("An int and a double and a character: %d, %lf,  %c\n", aInt, aDouble, aChar);

  //we can print expressions too
  int a = 2, b = 3,c;
  printf("Did you know %d + %d = %d\n", a, b, a + b);

  // printf also can allow us to do a lot of formatting
  // Here's how to limit how many digits after the decimal point are printed

  printf("Rounding to 0 decimal places %.0lf \n", aDouble);
  printf("Rounding to 1 decimal place %.1lf \n", aDouble);
  printf("Rounding to 2 decimal place %.2lf \n", aDouble);
  printf("Rounding to 3 decimal place %.3lf \n", aDouble);

  //a full list of all the formatting options can be found at http://www.cplusplus.com/reference/cstdio/printf/
  return 0;

}