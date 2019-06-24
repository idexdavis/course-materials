//
// Created by mfbut on 11/8/2017.
//

#include <stdlib.h>
#include <stdio.h>
#include "win.h"

bool is_game_over(char** board, const int num_rows, const int num_cols, const char blank_space) {
  return win(board, num_rows, num_cols, blank_space) ||
      tie(board, num_rows, num_cols, blank_space);
}

bool win(char** board, const int num_rows, const int num_cols, const char blank_space) {
  return horz_win(board, num_rows, num_cols, blank_space) ||
      vert_win(board, num_rows, num_cols, blank_space) ||
      diag_win(board, num_rows, num_cols, blank_space);
}

bool horz_win(char** board, const int num_rows, const int num_cols, const char blank_space) {

  for(int row = 0; row < num_rows; ++row){
    if(board[row][0] == blank_space){
      continue;
    }
    if(all_same(board[row], num_cols)){
      return true;
    }
  }
  return false;
}

bool vert_win(char** board, const int num_rows, const int num_cols, const char blank_space) {
  char* col_to_check = (char*)malloc(num_rows* sizeof(char));

  for(int col = 0; col < num_cols; ++col){
    if(board[0][col] == blank_space){
      continue;
    }
    for(int row = 0; row < num_rows; ++row){
      col_to_check[row] = board[row][col];
    }
    if(all_same(col_to_check, num_rows)){
      free(col_to_check);
      return true;
    }
  }
  free(col_to_check);
  return false;
}

bool diag_win(char** board, const int num_rows, const int num_cols, const char blank_space) {
  return left_diag_win(board, num_rows, num_cols, blank_space) ||
      right_diag_win(board, num_rows, num_cols, blank_space);
}

/**
 * Check for wins that look like
 * X
 *   X
 *     X
 * assuming a square board
 * @param board
 * @param num_rows
 * @param num_cols
 * @param blank_space
 * @return
 */
bool left_diag_win(char** board, const int num_rows, const int num_cols, const char blank_space) {
  char* diag = (char*)malloc(num_rows * sizeof(char));

  for(int pos = 0; pos < num_rows; ++pos){
    diag[pos] = board[pos][pos];
  }

  bool did_win = diag[0] != blank_space && all_same(diag, num_rows);

  free(diag);
  return did_win;
}

/**
 * check for wins that look like
 *     X
 *    X
 *   X
 * assuming square board
 * @param board
 * @param num_rows
 * @param num_cols
 * @param blank_space
 * @return
 */
bool right_diag_win(char** board, const int num_rows, const int num_cols, const char blank_space) {
  char* diag = (char*)malloc(num_rows * sizeof(char));

  for(int pos = 0; pos < num_rows; ++pos){
    diag[pos] = board[pos][num_cols - 1  - pos];
  }

  bool did_win = diag[0] != blank_space && all_same(diag, num_rows);

  free(diag);
  return did_win;
}

bool tie(char** board, const int num_rows, const int num_cols, const int blank_space) {
  return !win(board, num_rows, num_cols, blank_space) &&
      is_board_full(board, num_rows, num_cols, blank_space);
}

bool is_board_full(char** board, const int num_rows, const int num_cols, const int blank_space) {
  for(int row = 0; row < num_rows; ++row){
    for(int col = 0; col < num_cols; ++col){
      if(board[row][col] == blank_space){
        return false;
      }
    }
  }
  return true;
}



void declare_winner_or_tie(const int player_turn,
                           char** board,
                           const int num_rows,
                           const int num_cols,
                           const char blank_space) {

  if(win(board, num_rows, num_cols, blank_space)){
    if(player_turn == 0){
      printf("Player 2 won\n");
    }else{
      printf("Player 1 won\n");
    }
  }else{
    printf("Tie Game!\n");
  }
}



bool all_same(char* array, const int len) {
  for(int i = 1; i < len; ++i){
    if(array[i] != array[0]){
      return false;
    }
  }
  return true;
}




