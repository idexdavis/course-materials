#include <stdio.h>
#include <stdbool.h>
#include <ctype.h>

bool isValidFormat(const int numArgsRead, const int numArgsNeed);
bool isValidFormat(const int numArgsRead, const int numArgsNeed) {
  bool formatIsGood = numArgsRead == numArgsNeed;
  char character;
  do{
    scanf("%c", &character);
    if(!isspace(character)){
      formatIsGood = false;
    }
  }while(character != '\n');
  return formatIsGood;
}

bool badGetInt(){
  int num, nar;
  do{
    printf("Enter a number: ");
    nar = scanf("%d", &num);
  }while(nar != 1);
  return num;
}


int getValidInt(const char* prompt){
  int num;
  const int numArgsNeeded = 1;
  int numArgsRead;
  do{
    printf("%s", prompt);
    numArgsRead = scanf(" %d", &num);
  }while(!isValidFormat(numArgsRead, numArgsNeeded));

  return num;
}

bool inbetween(int val, int lowerBound, int upperBound){
  return val >= lowerBound && val <= upperBound;
}

int getValidIntInRange(int lowerBound, int upperBound){
  int num;
  const int numArgsNeeded = 1;
  int numArgsRead;
  do{
    printf("Enter a number between %d-%d: ", lowerBound, upperBound);
    numArgsRead = scanf(" %d", &num);
  }while(!(isValidFormat(numArgsRead, numArgsNeeded) &&
      inbetween(num, lowerBound, upperBound)));

  return num;
}

int getPosInt(){
  int num;
  const int numArgsNeeded = 1;
  int numArgsRead;
  do{
    printf("Enter a number between greater than 0: ");
    numArgsRead = scanf(" %d", &num);
  }while(!(isValidFormat(numArgsRead, numArgsNeeded) &&
      num > 0));

  return num;
}


int main() {

  int number = getValidInt("Enter a number: ");
  int age = getValidInt("Enter your age: ");

  printf("You entered %d\n", number);
  printf("Your age is %d\n", age);

  int boundedNum = getValidIntInRange(0, 100);
  printf("You entered %d\n", boundedNum);

  return 0;
}