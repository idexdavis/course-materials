//
// Created by mfbut on 11/13/2017.
//

#ifndef TIC_TAC_TOE_INPUT_VALIDATION_H
  #define TIC_TAC_TOE_INPUT_VALIDATION_H
  #include <stdbool.h>
  bool is_valid_format(const int num_args_read, const int num_args_needed);
  bool is_in_bounds(const int val, const int lower_bound, const int upper_bound);
#endif //TIC_TAC_TOE_INPUT_VALIDATION_H01
