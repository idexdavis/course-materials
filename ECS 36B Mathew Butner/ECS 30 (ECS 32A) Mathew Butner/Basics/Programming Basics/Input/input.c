#include <stdio.h>

int main() {
  // scanf is used to get input from the user
  //we use a

  int anInt;
  printf("Enter an integer: ");
  scanf("%d", &anInt);
  printf("You entered: %d\n", anInt);

  double aDouble;
  printf("Enter a real number: ");
  printf("bob\n");
  scanf("%lf", &aDouble);
  printf("You entered: %lf\n", aDouble);

  char aChar;
  printf("Enter a character: ");
  scanf(" %c", &aChar);
  printf("You entered: %c\n", aChar);
  // notice the space before the %c.
  // A space in a scanf string will match any number of whitespace characters (space, tab, newline)
  // So now our scanf will read the first non-whitespace character typed

  //we can ask for multiple items on the same line
  double temp;
  char unit;
  printf("Enter the temperature followed by its unit: ");
  scanf("%lf%c", &temp, &unit);
  printf("The temperature is %.2lf%c\n", temp, unit);

  // the above isn't so great because what if the user enters a space after the temperature
  // for example 56 F
  // then unit will actually be be a space and not the F
  // the fix for that is
  printf("Enter the temperature followed by its unit: ");
  scanf("%lf %c", &temp, &unit); //putting a space in the scanf format string to allow whitespace
  printf("The temperature is %.2lf%c\n", temp, unit);

  // we can also ask the user to enter specific characters
  int longitude, latitude;
  printf("Enter your current longitude and latitude with a comma in between them: ");
  scanf("%d , %d", &longitude, &latitude);
  printf("I have no idea where %d,%d is but I hope you like it there\n", longitude, latitude);

  //we can get as complicated as we want with it

  //a common mistake is to put a space or newline at the end of a scanf format string
  int num;
  printf("Enter a number: ");
  scanf("%d ", &num);  // error space at end of format string

  // the space at the end matches any number of white space characters
  // and a newline is whitespace
  // scanf normally stops reading after a newline but now it can't!

  //same problem below but with a newline
  printf("Enter a number: ");
  scanf("%d\n", &num);  // error newline at end of format string

  return 0;
}