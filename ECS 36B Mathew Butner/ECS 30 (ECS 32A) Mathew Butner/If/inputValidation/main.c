// This program demonstrates how to do input validation
// in a nice, functional, and reusable way

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

bool isValidFormat(const int numArgsNeeded, const int numArgsRead, bool isLastElement);

int getValidInt(const bool isLastElementOnLine);
char getValidChar(const bool isLastElementOnLine);
double getValidDouble(const bool isLastElementOnLine);

int getPosInt(const bool isLastElementOnLine);
int badGetPosint(const bool isLastElementOnLine);
double getValidDoubleInRange(const double lowerBound, const double upperBound, const bool isLastElementOnLine);

/**
 *
 * @param numArgsNeeded: the number of format placeholders that needed to have been read in the last scanf
 * @param numArgsRead: the actual number of placeholders that were read from scanf, ie its return value
 * @param isLastElementOnLine: true if this is the last value that should be on this line of input
 * @return: true if the input is correctly formatted and false otherwise
 */
bool isValidFormat(const int numArgsNeeded, const int numArgsRead, bool isLastElement) {
  char nextChar;
  if (numArgsNeeded != numArgsRead) {
    return false;
  }

  if (isLastElement) {
    scanf("%c", &nextChar); //don't do " %c"

    return nextChar == '\n';
  } else {
    return true;
  }

}

/**
 * Get an integer from the user but close the program if one is not entered
 * @param isLastElementOnLine : true if this is the last value that should be on this line of input
 * @return a valid integer
 */
int getValidInt(const bool isLastElementOnLine) {
  const int numArgsNeeded = 1;
  int numArgsRead;
  int num;

  numArgsRead = scanf(" %d", &num);
  if (isValidFormat(numArgsNeeded, numArgsRead, isLastElementOnLine)) {
    return num;
  } else {
    printf("Format Error\n");
    exit(0);
  }
}

/**
 * Get a character  from the user but close the program if one is not entered
 * @param isLastElementOnLine : true if this is the last value that should be on this line of input
 * @return a valid character
 */
char getValidChar(const bool isLastElementOnLine) {
  const int numArgsNeeded = 1;
  int numArgsRead;
  char theCharacter;

  numArgsRead = scanf(" %c", &theCharacter);
  if (isValidFormat(numArgsNeeded, numArgsRead, isLastElementOnLine)) {
    return theCharacter;
  } else {
    printf("Format Error\n");
    exit(0);
  }
}

/**
 * Get a double from the user but close the program if one is not entered
 * @param isLastElementOnLine : true if this is the last value that should be on this line of input
 * @return a valid double
 */
double getValidDouble(const bool isLastElementOnLine) {
  const int numArgsNeeded = 1;
  int numArgsRead;
  double num;

  numArgsRead = scanf(" %lf", &num);
  if (isValidFormat(numArgsNeeded, numArgsRead, isLastElementOnLine)) {
    return num;
  } else {
    printf("Format Error\n");
    exit(0);
  }
}

/**
 * Get an positive integer from the user but close the program if one is not entered
 * @param isLastElementOnLine : true if this is the last value that should be on this line of input
 * @return a valid positive integer
 */
int getPosInt(const bool isLastElementOnLine) {
  // first get a valid integer
  int num = getValidInt(isLastElementOnLine);
  // then check it meets the desired conditions
  if (num > 0) {
    return num;
  } else {
    printf("Number wasn't positive\n");
    exit(0);
  }
}

/**
 * An attempt to get a positive integer from the user but is incorrect
 * @param isLastElementOnLine : true if this is the last value that should be on this line of input
 * @return a valid positive integer
 */
int badGetPosint(const bool isLastElementOnLine) {
  int num = 20;
  int nar;
  nar = scanf("%d", &num);
  if (num > 0) {  // bad. checking the value of num before we know we got it
    return num;
  } else if (!isValidFormat(1, nar, isLastElementOnLine)) {
    printf("Formatting error\n");
    exit(0);
  } else {
    printf("Number wasn't positive\n");
    exit(0);
  }
}

/**
 * Get a double between lower bound and upper bound inclusive
 * @param lowerBound
 * @param upperBound
 * @param isLastElementOnLine : true if this is the last value that should be on this line of input
 * @return: a double between lower bound and upper bound
 */
double getValidDoubleInRange(const double lowerBound, const double upperBound, const bool isLastElementOnLine) {
  // first get a valid double
  double num = getValidDouble(isLastElementOnLine);

  // then check that it meets the constraints
  if (num >= lowerBound && num <= upperBound) {
    return num;
  } else {
    printf("Number not in range.\n");
    exit(0);
  }
}

int main() {

  int num1, num2;
  int num_args_read;

  printf('Enter two intgers separated by a ,: ');
  num_args_read = scanf(" %d , %d", &num1, &num2);
  if (!(isValidFormat(2, num_args_read, true) && num1 > num2)) {
    printf("You entered bad input\n");
    printf("Quitting program\n");
    exit(0);
  }

  // 3 , 20\n
  //dog man\n
  // dog , 20\n
  // 30 89\n
  // 30 , monkey\n
  // 30 , 20 , 59\n


  printf("Enter a number and number: ");
  int numEntered1 = getValidInt(false);
  int numEntered2 = getValidInt(true);
  printf("You entered %d %d\n", numEntered1, numEntered2);

  printf("Enter a double between 0 and 100: ");
  double boundedNum = getValidDoubleInRange(0, 100, true);
  printf("You entered: %.2lf\n", boundedNum);

  double dnum1;
  char c1, c2;
  printf("Enter a number and two letters: ");
  dnum1 = getValidDouble(false);
  c1 = getValidChar(false);
  c2 = getValidChar(true);
  printf("You entered %.2lf %c %c\n", dnum1, c1, c2);

  printf("Enter a positive number: ");
  int posNum = getPosInt(true);
  printf("You entered %d\n", posNum);

  return 0;
}
