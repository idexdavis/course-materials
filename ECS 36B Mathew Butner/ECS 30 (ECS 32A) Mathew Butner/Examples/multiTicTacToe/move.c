
#include <stdio.h>
#include "move.h"
#include "input_val.h"

//

void get_move( char** board, int* row, int* col){

	int num_args_read;
	do{
		printf("Enter a move in the form row, col: ");
		num_args_read = scanf("%d , %d", row, col);
	}while(!is_valid_move(num_args_read, 2, board, *row, *col));
}


void play_move(char** board, int row, int col, int turn){
	char pieces[] = {'X', 'O', '\0'};
	board[row][col] = pieces[turn];

}
void change_turn(int* turn){

	*turn = (*turn + 1) % 2;
}

