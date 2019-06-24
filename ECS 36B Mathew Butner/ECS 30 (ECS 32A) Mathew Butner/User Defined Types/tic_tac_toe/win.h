//
// Created by mfbut on 11/8/2017.
//

#ifndef TIC_TAC_TOE_WIN_H
#define TIC_TAC_TOE_WIN_H
  #include <stdbool.h>
#include "game_state.h"
bool is_game_over(const GameState game_state);
bool win(const GameState game_state);
bool horz_win(const GameState game_state);
bool vert_win(const GameState game_state);
bool diag_win(const GameState game_state);
bool left_diag_win(const GameState game_state);
bool right_diag_win(const GameState game_state);

bool tie(const GameState game_state);

void declare_winner_or_tie(const GameState game_state);


bool all_same(char* array, const int len);



#endif //TIC_TAC_TOE_WIN_H
