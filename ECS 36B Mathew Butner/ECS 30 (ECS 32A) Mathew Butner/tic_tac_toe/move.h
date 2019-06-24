//
// Created by mfbut on 11/13/2017.
//

#ifndef TIC_TAC_TOE_MOVE_H
#define TIC_TAC_TOE_MOVE_H

  #include <stdbool.h>
  void get_move(char** board, const int num_rows, const int num_columns, const char blank_space,
                int* row, int* col);
  bool is_valid_move(const int num_args_read,
                     const int num_args_needed,
                     char** board,
                     const int num_rows,
                     const int num_cols,
                     const int row,
                     const int col,
                     const char blank_space);
  void make_move(char** board,
                 const int row_played, const int col_played,
                 const char piece_played);
  int change_turn(const int player_turn);
#endif //TIC_TAC_TOE_MOVE_H
