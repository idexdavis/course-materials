#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <time.h>
#include <stdbool.h>
#include <string.h>

const int ROCK  = 0;
const int PAPER  = 1;
const int SCISSORS =  2;

bool isValidFormat(const int numArgsRead, const int numArgsNeed);
bool isValidFormat(const int numArgsRead, const int numArgsNeed) {
  bool formatIsGood = numArgsRead == numArgsNeed;
  char character;

  do{
    scanf("%c", &character);
    if(!isspace(character)){
      formatIsGood = false;
    }
    //formatIsGood = formatIsGood && isspace(character);
    //formatIsGood = isspace(character) ? formatIsGood : false;
  }while(character != '\n');

  return formatIsGood;
}

char get_valid_char(char prompt[], char validChars[]);
int getValidInt(const char* prompt);
bool contains(char str[], char value);


char convert_move(const int move);

int determine_results(int user_move, int ai_move);

char get_ai_move();

char convert_move(const int move) {

  if(move == ROCK){
    return 'r';
  } else if(move == PAPER){
    return 'p';
  } else if(move == SCISSORS){
    return 's';
  } else{
    printf("Bad user move entered\n");
    return -1;
  }
}
int determine_results(int user_move, int ai_move) {
  const int tie = 0;
  const int player_win = 1;
  const int ai_win = 2;

  if(user_move == ai_move){
    return tie;
  } else if(user_move == 'r' && ai_move == 's'){
    return player_win;
  }else if(user_move == 'p' && ai_move == 'r'){
    return player_win;
  } else if(user_move == 's' && ai_move == 'p'){
    return player_win;
  } else{
    return ai_win;
  }

}
char get_ai_move() {
  int num_move = rand() % 3;
  return convert_move(num_move);
}
char get_valid_char(char *prompt, char validChars[]) {
  char c;
  int numArgsRead;
  const int numArgsNeeded = 1;
  do{
    printf("%s", prompt);
    numArgsRead = scanf(" %c", &c);
    c = tolower(c);
  }while(!(isValidFormat(numArgsRead,numArgsNeeded) &&
  contains(validChars, c)));
  return c;
}
bool contains(char *str, char value) {
  for(int i = 0; i < strlen(str); ++i){
    if(value == str[i]){
      return true;
    }
  }
  return false;
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

int main() {
  int seed;
  char user_move, ai_move;
  int result;

  ///for testing
  seed = getValidInt("Enter the seed: ");
  srand(seed);

  //for real
  //srand((time(0)));


  do {
    //get the user's move
    user_move = get_valid_char("Enter r for rock, p for paper or s for scissors: ",
    "rps");

    //get ai move
    ai_move = get_ai_move();

    //min_value + (rand() % range)
    printf("User played %c and AI played %c\n", user_move, ai_move);

    result = determine_results(user_move, ai_move);
  } while (result == 0);

  //declare winner

  if(result == 1){
    printf("Player won.");
  }else{
    printf("Player lost.");
  }


  return 0;
}