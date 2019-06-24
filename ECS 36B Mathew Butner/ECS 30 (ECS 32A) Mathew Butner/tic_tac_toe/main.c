#include <stdbool.h>
#include "board.h"
#include "move.h"
#include "win.h"

int main() {
  const char blank_space = '*';
  const int num_rows = 3;
  const int num_cols = 3;
  const char pieces[] = "XO";
  char** board = create_board(num_rows, num_cols, blank_space);
  int row_played, col_played;
  int player_turn = 0; // 0 means player 1, 1 means player

  while (!is_game_over(board, num_rows, num_cols, blank_space)) {
    display_board(board, num_rows, num_cols);

    get_move(board, num_rows, num_cols, blank_space, &row_played, &col_played);

    make_move(board, row_played, col_played, pieces[player_turn] );

    player_turn = change_turn(player_turn);

  }

  declare_winner_or_tie(player_turn, board, num_rows, num_cols, blank_space);

  clean_up(&board, num_rows, num_cols);
  return 0;
}
