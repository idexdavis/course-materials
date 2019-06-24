//
// Created by mfbut on 11/13/2017.
//
#include <stdio.h>
#include <stdbool.h>
#include "move.h"
#include "input_validation.h"


Move get_move(const GameState game_state) {
  Move player_move;
  int num_args_read;
  const int num_args_needed = 2;

  do {
    printf("Enter a move in the form row, col: ");
    num_args_read = scanf("%d , %d", &player_move.row, &player_move.col);
  }while(!is_valid_move(game_state, num_args_read, num_args_needed, player_move));
  return player_move;
}

bool is_valid_move(const GameState game_state,
                   const int num_args_read,
                   const int num_args_needed,
                   const Move player_move) {
  if(!is_valid_format(num_args_read, num_args_needed)){
    return false;
  }

  else if(!(is_in_bounds(player_move.row, 0, game_state.board.num_rows - 1) &&
      is_in_bounds(player_move.col, 0, game_state.board.num_cols-1))){
    return false;
  }

  else if(game_state.board.the_board[player_move.row][player_move.col] != game_state.board.blank_space){
    return false;
  }
  else{
    return true;
  }

}
void make_move(GameState* game_state, const Move player_move) {

  char pieces[] = "XO";
  const char piece_played = pieces[game_state->player_turn];
  game_state->board.the_board[player_move.row][player_move.col] = piece_played;
}

void change_turn(GameState* game_state) {
  if(game_state->player_turn == PLAYER_ONE){
    game_state ->player_turn =  PLAYER_TWO;
  } else{
    game_state->player_turn =  PLAYER_ONE;
  }
 // return (player_turn + 1) % 2;
}
