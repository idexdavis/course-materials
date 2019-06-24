//
// Created by mfbut on 11/8/2017.
//

#include <stdlib.h>
#include <stdio.h>
#include "board.h"

void display_board(char** board, const int num_rows, const int num_cols) {
  // print column headers
  printf("  ");
  for(int col = 0; col < num_cols; ++col){
    printf("%d ", col);
  }
  printf("\n");
  // print board
  for (int row = 0; row < num_rows; ++row) {
    printf("%d ", row);  // row header
    for (int col = 0; col < num_cols; ++col) {
      printf("%c ", board[row][col]);
    }
    printf("\n");
  }

}

char** create_board(const int num_rows, const int num_cols, const char blank_space) {
  char** board = (char**) malloc(num_rows * sizeof(char*));
  for(int row = 0; row < num_rows; ++row){
    board[row] = (char*) malloc(num_cols * sizeof(char));
    for (int col = 0; col < num_cols; ++col) {
      board[row][col] = blank_space;
    }
  }
  return board;
}
void clean_up(char*** board, const int num_rows, const int num_cols) {
  for(int row = 0; row < num_rows; ++row){
    free((*board)[row]);
  }
  free(*board);
  *board = NULL;
}
