//
// Created by mfbut on 7/17/2018.
//

#ifndef SUMMER2018TICTACTOE_BOARD_H
#define SUMMER2018TICTACTOE_BOARD_H
#include "move.h"

 typedef struct Board_Struct{
   char** theBoard;
   int numRows;
   int numCols;
   char blankChar;
 }Board;


Board makeBoard(int numRows, int numCols, char blankChar);
void printBoard(Board board);
void cleanUpBoard(Board* board);

void placeMove(Move move, Board* board);

#endif //SUMMER2018TICTACTOE_BOARD_H
