//
// Created by mfbut on 7/17/2018.
//


#ifndef SUMMER2018TICTACTOE_MOVE_H
#define SUMMER2018TICTACTOE_MOVE_H
#include <stdbool.h>
//#include "board.h"
typedef enum{Player1 = 0, Player2 = 1}TurnType;

typedef struct Move_Struct{
  int row, col;
  char marker;
}Move;

struct Board_Struct;


Move getValidMove( struct Board_Struct* board, TurnType playerTurn);
bool isValidMove(Move move,  struct Board_Struct* board, int numArgsRead, int numArgsNeeded);
const char* PlayerToString(TurnType player);

#endif //SUMMER2018TICTACTOE_MOVE_H
