//
// Created by mfbut on 11/13/2017.
//

#include <stdio.h>
#include <ctype.h>
#include "input_validation.h"
bool is_valid_format(const int num_args_read, const int num_args_needed) {
  bool valid = num_args_read == num_args_needed;
  char c;

    //check that nothing came after
    do{
      scanf("%c", &c);
      if(!isspace(c)){
        valid = false;
      }
    }while(c != '\n');

  return valid;
}
bool is_in_bounds(const int val, const int lower_bound, const int upper_bound) {
  return val >= lower_bound && val <= upper_bound;
}


