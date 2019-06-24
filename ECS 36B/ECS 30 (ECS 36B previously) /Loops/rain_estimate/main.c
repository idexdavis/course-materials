#include <stdio.h>
#include <stdlib.h>
#include <time.h>

double get_random_double(double LO, double HI){
 return LO + ((double) rand()) / (((double) RAND_MAX) / (HI - LO));
}

double est_raining_average(double chanceOfRain, int num_iterations){
  int num_rainy_days = 0;
  for(int i = 0; i < num_iterations; ++i){
    if(get_random_double(0,1) <= chanceOfRain){
      num_rainy_days++;
    }
  }
  return ((double) num_rainy_days) / ((double) num_iterations);
}

int main() {
  srand(time(0));
  printf("Enter the chance of rain: ");
  double rain_prob;
  scanf("%lf", &rain_prob);

  printf("Enter the number of days to simulate: ");
  int num_days;
  scanf("%d", &num_days);

  printf("On average it rained for %.2lf days\n",
  est_raining_average(rain_prob, num_days));

  return 0;
}