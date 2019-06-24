//
// Created by mfbut on 11/13/2017.
//
#include <stdio.h>
#include <stdbool.h>
#include "move.h"
#include "input_validation.h"


void get_move(char** board, const int num_rows, const int num_columns, const char blank_space,
              int* row, int* col) {
  int num_args_read;
  const int num_args_needed = 2;
  do {
    printf("Enter a move in the form row, col: ");
    num_args_read = scanf("%d , %d", row, col);
  }while(!is_valid_move(num_args_read, num_args_needed,
                        board, num_rows, num_columns,
                        *row, *col, blank_space));
}

bool is_valid_move(const int num_args_read,
                   const int num_args_needed,
                   char** board,
                   const int num_rows,
                   const int num_cols,
                   const int row,
                   const int col,
                   const char blank_space) {
  if(!is_valid_format(num_args_read, num_args_needed)){
    return false;
  }

  else if(!(is_in_bounds(row, 0, num_rows - 1) && is_in_bounds(col, 0, num_cols-1))){
    return false;
  }

  else if(board[row][col] != blank_space){
    return false;
  }
  else{
    return true;
  }

}
void make_move(char** board, const int row_played, const int col_played, const char piece_played) {

  board[row_played][col_played] = piece_played;
}
int change_turn(const int player_turn) {
  if(player_turn == 0){
    return 1;
  } else{
    return 0;
  }
 // return (player_turn + 1) % 2;
}
