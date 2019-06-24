#include <stdio.h>
#include <stdlib.h>
#include <time.h>


void simple_secret_number(int secret_number);
void closer_farther_secret_number(int secret_number);

int main(){
  srand(time(0));
  //pick a secret number
  int secret_number = 1 + rand() % (100 - 1 + 1);
  //simple_secret_number(secret_number);
  closer_farther_secret_number(secret_number);
  //check the guess and the secret number
  // tell them if they got it right or not
  //user keeps guessing until they guess the number

  return 0;

}

void simple_secret_number(int secret_number) {
  int user_guess;
  do{
    //get a guess from the user
    printf("Enter a number between 1 - 100: ");
    scanf(" %d", &user_guess);
    if(secret_number != user_guess){
      printf("%d is not my secret number\n", user_guess);
    }

  }while(secret_number != user_guess); //while they haven't guessed the secret number

  printf("You guessed my secret number of %d\n", secret_number);
}

void closer_farther_secret_number(int secret_number) {
  int cur_user_guess, prev_user_guess;
  int cur_dist, prev_dist;

  printf("Enter a number between 1 - 100: ");
  scanf(" %d", &cur_user_guess);

  while(cur_user_guess != secret_number){
    prev_user_guess = cur_user_guess;
    printf("Enter a number between 1 - 100: ");
    scanf(" %d", &cur_user_guess);

    cur_dist = abs(cur_user_guess - secret_number);
    prev_dist = abs(prev_user_guess - secret_number);
    if(cur_user_guess == secret_number){
      break;
    }
    else if( cur_dist < prev_dist){
      printf("You are getting closer\n");
    } else if(cur_dist > prev_dist){
      printf("You are getting farther away\n");
    }else{
      printf("You are just as far away\n");
    }
  }

  printf("You guessed my secret number of %d\n", cur_user_guess);
}
