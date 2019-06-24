
#ifndef WIN_H
	#define WIN_H
	//change
	#include <stdbool.h>
	bool is_game_over( char** board);
	bool win( char** board);
	bool row_win( char** board);
	bool vert_win( char** board);
	bool diag_win( char** board);
	bool left_diag_win( char** board);
	bool right_diag_win( char** board);
	bool tie( char** board);
	void declare_winner(char** board, int turn);


#endif
