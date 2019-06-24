#include <stdio.h>
/*
 * Figures out how to evenly divide donuts between the people
 * in a class. You keep the leftovers
 */
int main(){
  int num_people, num_donuts;
  int donuts_per_person, num_leftover_donuts, num_donuts_for_me;
  //get the number of people
  printf("Please enter the number of people in the class excluding you: ");
  scanf("%d", &num_people);

  //get the number of donuts we have
  printf("Please enter the number of donuts you have: ");
  scanf("%d", &num_donuts);

  //figure out how many donuts each person gets
  donuts_per_person = num_donuts / (num_people + 1);

  //find out how many leftover donuts there are
  num_leftover_donuts = num_donuts % (num_people + 1);// num_donuts - num_people * donuts_per_person

  //give the leftovers to myself
  num_donuts_for_me = num_leftover_donuts + donuts_per_person;

  //display the results
  printf("Everyone in the class gets %d donuts and you get %d donuts\n",
         donuts_per_person, num_donuts_for_me);

  return 0;
}