//
// Created by mfbut on 11/13/2017.
//

#ifndef TIC_TAC_TOE_MOVE_H
#define TIC_TAC_TOE_MOVE_H

  #include <stdbool.h>
  #include "game_state.h"

  typedef struct move_struct{
    int row;
    int col;
  }Move;

  Move get_move(const GameState game_state);
  bool is_valid_move(const GameState game_state,
                   const int num_args_read,
                   const int num_args_needed,
                   const Move player_move);
  void make_move(GameState* game_state, const Move player_move);
  void change_turn(GameState* game_state);
#endif //TIC_TAC_TOE_MOVE_H
