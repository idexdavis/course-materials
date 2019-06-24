//
// Created by mfbut on 11/17/2017.
//

#ifndef TIC_TAC_TOE_GAME_STATE_H
#define TIC_TAC_TOE_GAME_STATE_H
  #include "board.h"

  typedef enum{PLAYER_ONE=0, PLAYER_TWO=1}PlayerTurn_type;

  typedef struct game_state_struct{
    Board board;
    PlayerTurn_type player_turn;
  } GameState;

  GameState initialize_game_state(const int num_rows, const int num_cols);
#endif //TIC_TAC_TOE_GAME_STATE_H
