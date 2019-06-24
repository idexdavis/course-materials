#include <stdio.h>

int main() {
  short smallWholeNumbers = 12;
  int wholeNumbers = 35;

  float realNumbers = 12.79;
  double betterRealNumbers = 58.24; // doubles have more precision and a larger range of values

  char character = 'A';

  int uninitialized; /* variables don't have to be initialized when you create them
 * but they need have a value placed in them before using them */

  // multiple variables of the SAME type can be created on the same line
  int unknown1, unknown2;

  // as well as assigned to
  char firstLetter = 'a', secondLetter = 'b', thirdLetter = 'c';

  // or a mix
  int set = 1, unset;

  //the value of a variable can be changed later on
  unset = 10;
  unset = 12;

  //and variables can be used in expressions
  unknown1 = unset + wholeNumbers;
  unknown2 = unknown1 * 2;

  // varaibles can be updated based on their old value
  unset = unset + unset + 5;

  unknown1 = 35.47;


  //variables can also have modifiers on them

  // const means a variable's value can't change can't change
  const float pi = 3.14159;

  pi = 4; // this is an error because pi is const and const variables cant be changed

  // unsigned means a variable can only store positive values
  unsigned int posOnly = 12;

  // this is valid C code but don't put negative numbers into unsigned variables
  posOnly = -1; // it will make them really big positive numbers

  //make a variable global but only accessible inside this function. we'll talk more on this later
  static int functionGlobal = 12;

  //the modifiers can be combined
  static const unsigned int hasItAll = 100;

  // you can convert between types using a cast
  int int1 = 12;
  double double1 = (double) int1;

  int roundDown = (int)5.69; //rounding a float or double to an int causes the decimal part to be thrown away

}