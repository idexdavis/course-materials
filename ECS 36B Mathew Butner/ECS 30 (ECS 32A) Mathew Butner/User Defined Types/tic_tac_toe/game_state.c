//
// Created by mfbut on 11/17/2017.
//

#include "game_state.h"

GameState initialize_game_state(const int num_rows, const int num_cols) {
  GameState game_state;
  game_state.board = create_board(num_rows, num_cols, '*');
  game_state.player_turn = PLAYER_ONE;
  return game_state;
}
