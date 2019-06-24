#include <stdio.h>
#include <stdbool.h>
#include <ctype.h>
#include "input_val.h"
#include "board_spec.h"


bool is_valid_move(int num_args_read, int num_args_needed,  char** board, int row, int col){

	return is_valid_formatting(num_args_read, num_args_needed) &&
				 move_constraints_met(board, row, col);
}

bool is_valid_formatting(int num_args_read, int num_args_needed){
	/* check if the format on the entered input is correct
		@num_args_read: the number of format specifiers filled in by scanf
		@num_args_needed: the number of format specifiers you expected to be filled in
		@returns: true if the format is correct and false otherwise
		@side effects: consumes all characters on the standard input
		*/
	char new_line = '\n';
	bool is_valid = true; //assume the format is correct
	if(num_args_read != num_args_needed){ //didn't fill in all the format specifiers
		is_valid = false;//format is not correct
	}
	
	do{
		scanf("%c", &new_line); //read the next character from the standard input
		if(!isspace(new_line)){ //if it isn't white space
			is_valid = false; //extra stuff there so format isn't valid
		}
	}while(new_line != '\n'); //keep reading characters until you reach the new line character
	return is_valid;
}

bool move_constraints_met( char** board, int row, int col){

	return move_inside_board(row, col) && is_blank_space(board[row][col]);

}

bool move_inside_board(int row, int col){

	return row >= 0 && row < num_rows && col >= 0 && col < num_cols;

}

bool is_blank_space( char piece){
	return piece == blank_space;
}




bool all_same( char* ar,  char character,  int len){
	int i;
	for(i = 0; i < len; ++i){
		if(ar[i] != character){
			return false;
		}
	}
	return true;
} 

