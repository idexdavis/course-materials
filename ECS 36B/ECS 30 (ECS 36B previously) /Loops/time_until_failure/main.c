#include <stdio.h>
#include <stdlib.h>
#include <time.h>

double estimate_avg_to_fail(double prob_fail, int num_simulations);
int sim_until_fail(double prob_fail);
double get_random_double(double low, double high);


double estimate_avg_to_fail(double prob_fail, int num_simulations) {
  int total_successes = 0;
  for (int sim = 0; sim < num_simulations; ++sim) {
    total_successes += sim_until_fail(prob_fail);
  }
  return  ((double)total_successes) / ((double)num_simulations);
}

int sim_until_fail(double prob_fail) {
  int num_successes = 0;
  double prob_success = 1 - prob_fail;
  while(get_random_double(0.0, 1.0) < prob_success){ //we haven't failed / while we succeed
    num_successes++;
  }
  return num_successes;
}

double get_random_double(double low, double high) {
  return low + (high - low) * ((double) rand()) / ((double) RAND_MAX);
}

int main(){

  //seed random number generator
  double prob_fail;
  double avg_uses_to_fail;
  int num_simulations;
  srand((time(0)));
  //get probablity of thing failing
  printf("Enter the probability of failure: ");
  scanf("%lf", & prob_fail);
  //get the number of simulations to run
  printf("Enter the number of simulations you want to run: ");
  scanf("%d", &num_simulations);
  //simulate
  avg_uses_to_fail = estimate_avg_to_fail(prob_fail, num_simulations);
  //dispaly the results
  printf("On average it takes %.2lf uses until failure\n", avg_uses_to_fail);

  return 0;
}