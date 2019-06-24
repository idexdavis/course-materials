//
// Created by mfbut on 11/8/2017.
//

#ifndef TIC_TAC_TOE_WIN_H
#define TIC_TAC_TOE_WIN_H
  #include <stdbool.h>
  bool is_game_over(char** board,
                    const int num_rows, const int num_cols,
  const char blank_space);
  bool win(char** board, const int num_rows, const int num_cols,
           const char blank_space);
  bool horz_win(char** board, const int num_rows, const int num_cols, const char blank_space);
  bool vert_win(char** board, const int num_rows, const int num_cols, const char blank_space);
  bool diag_win(char** board, const int num_rows, const int num_cols, const char blank_space);
  bool left_diag_win(char** board, const int num_rows, const int num_cols, const char blank_space);
  bool right_diag_win(char** board, const int num_rows, const int num_cols, const char blank_space);

  bool tie(char** board, const int num_rows, const int num_cols, const int blank_space);
  bool is_board_full(char** board, const int num_rows, const int num_cols, const int blank_space);

void declare_winner_or_tie(const int player_turn,
                           char** board,
                           const int num_rows,
                           const int num_cols,
                           const char blank_space);


bool all_same(char* array, const int len);



#endif //TIC_TAC_TOE_WIN_H
