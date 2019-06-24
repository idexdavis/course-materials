//
// Created by mfbut on 7/17/2018.
//

#include <stdio.h>
#include "win.h"

bool isGameOver(Board board) {
  return win(board) || tie(board);
}

bool win(Board board) {
  return horzWin(board) || vertWin(board) || diagWin(board);
}

bool horzWin(Board board) {
  int numInARow;
  for (int row = 0; row < board.numRows; ++row) {
    numInARow = 0;
    if (board.theBoard[row][0] == board.blankChar) {
      continue;
    }
    for (int col = 0; col < board.numCols; ++col) {
      if (board.theBoard[row][col] == board.theBoard[row][0]) {
        numInARow++;
        if (numInARow == 3) {
          return true;
        }
      } else {
        break;
      }
    }
  }
  return false;
}

bool vertWin(Board board) {
  int numInARow;
  for (int col = 0; col < board.numCols; ++col) {
    numInARow = 0;
    if (board.theBoard[0][col] == board.blankChar) {
      continue;
    }
    for (int row = 0; row < board.numRows; ++row) {
      if (board.theBoard[row][col] == board.theBoard[0][col]) {
        numInARow++;
        if (numInARow == 3) {
          return true;
        }
      } else {
        break;
      }
    }
  }
  return false;
}

bool diagWin(Board board) {
  return leftDiagWin(board) || rightDiagWin(board);
}

/**
 * Check for a left diagonal win. This looks like
 * X
 *   X
 *     X
 * @param board
 * @return
 */
bool leftDiagWin(Board board) {

  if (board.theBoard[0][0] == board.blankChar) {
    return false;
  }

  for (int i = 0; i < board.numRows; ++i) {
    if (board.theBoard[i][i] != board.theBoard[0][0]) {
      return false;
    }
  }
  return true;

}

/**
 * Check for a right diagonal win
 * One that looks like
 *      X
 *    X
 *  X
 * @param board
 * @return
 */
bool rightDiagWin(Board board) {
  if (board.theBoard[0][board.numCols-1] == board.blankChar) {
    return false;
  }

  for (int i = 0; i < board.numRows; ++i) {
    if (board.theBoard[i][board.numCols - i - 1] != board.theBoard[0][board.numCols-1]) {
      return false;
    }
  }
  return true;
}

bool tie(Board board) {

  if(win(board)){
    return false;
  }

  for (int row = 0; row < board.numRows; ++row) {
    for (int col = 0; col < board.numCols; ++col) {
      if(board.theBoard[row][col] == board.blankChar){
        return false;
      }
    }
  }
  return true;
}

void declareWinner(Board board, TurnType playerTurn) {
  if(win(board)){
    //if someone one it would actually be the loser's turn
    //so account for this here
    int winner = playerTurn == Player1 ? Player2 : Player1;
    winner++;

    printf("Player %d won!\n", winner);

  }else{
    printf("Tie game.\n");
  }
}
