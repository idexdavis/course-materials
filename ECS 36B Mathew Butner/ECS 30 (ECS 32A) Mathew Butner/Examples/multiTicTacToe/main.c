#include <stdlib.h>
#include "board.h"
#include "win.h"
#include "move.h"

int num_rows = 3;
int num_cols = 3;
char blank_space = '*';

void play_tic_toe(){

	char** board = NULL;
	int turn;
	int row, col;
	//set up
	set_up(&board, &turn);
	
	//play _game
	while(!is_game_over(board)){
		display_board(board);
		get_move( board, &row, &col);
		play_move(board, row, col, turn);
		change_turn(&turn);
	}
	
	display_board(board);	
	declare_winner(board, turn);
	clean_up(&board);
}


int main(){

	play_tic_toe();
	return 0;

}
