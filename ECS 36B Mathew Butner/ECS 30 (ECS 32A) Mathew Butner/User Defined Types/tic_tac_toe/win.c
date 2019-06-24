//
// Created by mfbut on 11/8/2017.
//

#include <stdlib.h>
#include <stdio.h>
#include "win.h"
#include "game_state.h"
#include "board.h"

bool is_game_over(const GameState game_state) {
  return win(game_state) || tie(game_state);
}

bool win(const GameState game_state) {
  return horz_win(game_state) || vert_win(game_state) || diag_win(game_state);
}

bool horz_win(const GameState game_state) {

  for(int row = 0; row < game_state.board.num_rows; ++row){
    if(game_state.board.the_board[row][0] == game_state.board.blank_space){
      continue;
    }
    if(all_same(game_state.board.the_board[row], game_state.board.num_cols)){
      return true;
    }
  }
  return false;
}

bool vert_win(const GameState game_state) {
  char* col_to_check = (char*)malloc(game_state.board.num_rows* sizeof(char));

  for(int col = 0; col < game_state.board.num_cols; ++col){
    if(game_state.board.the_board[0][col] == game_state.board.blank_space){
      continue;
    }
    for(int row = 0; row < game_state.board.num_rows; ++row){
      col_to_check[row] = game_state.board.the_board[row][col];
    }
    if(all_same(col_to_check, game_state.board.num_rows)){
      free(col_to_check);
      return true;
    }
  }
  free(col_to_check);
  return false;
}

bool diag_win(const GameState game_state) {
  return left_diag_win(game_state) || right_diag_win(game_state);
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
 * @param game_state
 * @return
 */
bool left_diag_win(const GameState game_state) {
  char* diag = (char*)malloc(game_state.board.num_rows * sizeof(char));

  for(int pos = 0; pos < game_state.board.num_rows; ++pos){
    diag[pos] = game_state.board.the_board[pos][pos];
  }

  bool did_win = diag[0] != game_state.board.blank_space &&
      all_same(diag, game_state.board.num_rows);

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
 * @param game_state
 * @return
 */
bool right_diag_win(const GameState game_state) {
  char* diag = (char*)malloc(game_state.board.num_rows * sizeof(char));

  for(int pos = 0; pos < game_state.board.num_rows; ++pos){
    diag[pos] = game_state.board.the_board[pos][game_state.board.num_cols - 1  - pos];
  }

  bool did_win = diag[0] != game_state.board.blank_space &&
      all_same(diag, game_state.board.num_rows);

  free(diag);
  return did_win;
}

bool tie(const GameState game_state) {
  return !win(game_state) && is_board_full(game_state.board);
}

void declare_winner_or_tie(const GameState game_state) {

  if(win(game_state)){
    if(game_state.player_turn == 0){
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




