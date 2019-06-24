//
// Created by mfbut on 11/8/2017.
//

#ifndef TIC_TAC_TOE_BOARD_H
#define TIC_TAC_TOE_BOARD_H
  void display_board(char** board, const int num_rows, const int num_cols);
  char** create_board(const int num_rows, const int num_cols, const char blank_space);
  void clean_up(char*** board, const int num_rows, const int num_cols);
#endif //TIC_TAC_TOE_BOARD_H
