#ifndef INPUT_VAL_H
	#define INPUT_VAL_H
	
	#include <stdbool.h>
	
	bool all_same( char* ar,  char character,  int len);
	bool is_valid_move(int num_args_read, int num_args_needed,  char** board, int row, int col);
	bool is_valid_formatting(int num_args_read, int num_args_needed);
	bool move_constraints_met( char** board, int row, int col);
	bool move_inside_board(int row, int col);
	bool is_blank_space( char piece);

#endif
