#include <stdio.h>
#include "win.h"
#include "board_spec.h"
#include "input_val.h"


bool is_game_over( char** board){
	return win(board) ||  tie(board);
}

bool win( char** board){
	return row_win(board) || vert_win(board) || diag_win(board);
}

bool row_win( char** board){
	int row;
	for(row = 0; row < num_rows; ++row){
		if(all_same(board[row], 'X', num_cols) || all_same(board[row], 'O', num_cols)){
			return true;
		}
	}
	return false;
}

bool vert_win( char** board){
	int col, row;
	char first_piece;
	
	for(col = 0; col < num_cols; ++col){
		first_piece = board[0][col];
		if(first_piece == blank_space){ //first piece is blank
			continue; //check next column
		}
		for(row = 1; row < num_rows; ++row){
			if(board[row][col] != first_piece){
				break;
			}
		}
		if(row == num_rows){//only way for this to be true is if all the pieces in the column are the same
			return true;
		}
	}
	return false; //no match
}

bool diag_win( char** board){
	return left_diag_win(board) || right_diag_win(board);
}

bool left_diag_win( char** board){
/*
X
	X
		X
*/

	 char upper_left = board[0][0];
	int i;

	if(upper_left == blank_space){
		return false;
	}
	else{
		for(i = 1; i < num_rows; ++i){
			if(board[i][i] != upper_left){
				return false;
			}
		}
		return true;
	}
}

bool right_diag_win( char** board){
/*
	0	1	2	3
0				X
1			X
2		X
3	X
*/

	 char upper_right = board[0][num_rows - 1];
	int i;

	if(upper_right == blank_space){
		return false;
	}
	else{
		for(i = 1; i < num_rows; ++i){
			if(board[i][num_cols - 1 - i] != upper_right){
				return false;
			}
		}
		return true;
	}
}

bool tie( char** board){

	int row, col;
	//check that there are no blank spaces
	for(row = 0; row < num_rows; ++row){
		for(col = 0; col < num_cols; ++col){
			if(board[row][col] == blank_space){
				return false;
			}
		}
	}
	
	return !win(board);
}


void declare_winner(char** board, int turn){

	if(win(board)){
		
		if(turn == 1){
			printf("Player 1 Won!\n");
		}
		else{
			printf("Player 2 Wont!\n");
		}
	}
	else{
		printf("Tie game.\n");
	}
}

