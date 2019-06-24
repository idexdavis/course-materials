//
// Created by mfbut on 7/17/2018.
//
#include <ctype.h>
#include <stdio.h>
#include "InputValidation.h"


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

bool isInRange(int value, int lowerBound, int uppderBound) {
  return value >= lowerBound && value <= uppderBound;
}
