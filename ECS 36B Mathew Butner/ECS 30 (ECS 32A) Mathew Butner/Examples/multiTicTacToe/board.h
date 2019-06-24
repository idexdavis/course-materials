#ifndef BOARD_H
	#define BOARD_H
	
	void set_up(char*** board, int* turn);
	char** make_board();
	void display_board( char** board);
	void clean_up(char*** board);
#endif
