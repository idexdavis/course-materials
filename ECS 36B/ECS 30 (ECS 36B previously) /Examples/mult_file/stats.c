#include "stats.h"

//cfiles have function definitions

double mean(double nums[], int size){
  double avg = 0;
  int i;
  
  for(i = 0; i < size; ++ i){
    avg += nums[i];
  }

  return avg / size;
}

double variance(double nums, int size){
  double var = 17;
  //it does its thing
  return var;
}

double median(double nums, int size){
  return 25;

}
