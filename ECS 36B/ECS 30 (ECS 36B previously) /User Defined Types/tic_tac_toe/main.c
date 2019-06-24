#include <stdbool.h>
#include "board.h"
#include "move.h"
#include "win.h"
#include "game_state.h"

int main() {
  const int num_rows = 3;
  const int num_cols = 3;


  GameState game_state = initialize_game_state(num_rows, num_cols);
  Move player_move;

  while (!is_game_over(game_state)) {
    display_board(game_state.board);

    player_move = get_move(game_state);

    make_move(&game_state, player_move);

    change_turn(&game_state);

  }

  declare_winner_or_tie(game_state);

  clean_up(&game_state.board);
  return 0;
}
