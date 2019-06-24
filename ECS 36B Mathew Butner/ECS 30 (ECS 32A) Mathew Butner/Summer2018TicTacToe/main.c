#include <stdio.h>
#include "board.h"
#include "move.h"
#include "win.h"



int main() {
  //make a board
  Board board = makeBoard(3,3,'*');
  TurnType playerTurn = Player1;
  // pick a starting player
  while(!isGameOver(board)){
    //show them the state of the game
    printBoard(board);
    //get a move from the user
    Move move = getValidMove(&board, playerTurn);
    //place their move on the board
    placeMove(move, &board);
    //change turn
    //playerTurn = (playerTurn + 1) % 2;
    playerTurn = playerTurn == Player1 ? Player2 : Player1;
  }

  //print the winning board
  printBoard(board);

  //declare who wins or a tie
  declareWinner(board, playerTurn);
  //clean up
  cleanUpBoard(&board);

  return 0;
}