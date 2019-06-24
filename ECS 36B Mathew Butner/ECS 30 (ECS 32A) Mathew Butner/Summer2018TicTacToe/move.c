//
// Created by mfbut on 7/17/2018.
//

#include <stdio.h>
#include "move.h"
#include "board.h"
#include "InputValidation.h"

Move getValidMove(struct Board_Struct* board, TurnType playerTurn) {
  Move move;
  int numArgsRead;
  do {
    printf("%s enter a spot to play in, in the form row, col: ", PlayerToString(playerTurn));
    numArgsRead = scanf("%d , %d", &move.row, &move.col);
  } while (!isValidMove(move, board, numArgsRead, 2));

  move.marker = "XO"[playerTurn];

  return move;
}

bool isValidMove(Move move, struct Board_Struct* board, int numArgsRead, int numArgsNeeded) {
  return isValidFormat(numArgsRead, numArgsNeeded) &&
      isInRange(move.row, 0, board->numRows - 1) &&
      isInRange(move.col, 0, board->numCols - 1) &&
      board->theBoard[move.row][move.col] == board->blankChar;
}

const char* PlayerToString(TurnType player) {
  static const char p1[] = "Player1";
  static const char p2[] = "Player2";
  if(player == Player1){
    return p1;
  } else{
    return p2;
  }
}
