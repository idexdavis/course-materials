#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <ctype.h>

 int num_rows = 3;
 int num_cols = 3;
 char blank_space = '*';

void set_up(char*** board, int* turn);
char** make_board();
void display_board( char** board);
void clean_up(char*** board);

bool is_game_over( char** board);
bool win( char** board);
bool row_win( char** board);
bool vert_win( char** board);
bool diag_win( char** board);
bool left_diag_win( char** board);
bool right_diag_win( char** board);
bool tie( char** board);
void declare_winner(char** board, int turn);

bool all_same( char* ar,  char character,  int len);
bool is_valid_move(int num_args_read, int num_args_needed,  char** board, int row, int col);
bool is_valid_formatting(int num_args_read, int num_args_needed);
bool move_constraints_met( char** board, int row, int col);
bool move_inside_board(int row, int col);
bool is_blank_space( char piece);

void get_move( char** board, int* row, int* col);
void play_move(char** board, int row, int col, int turn);
void change_turn(int* turn);



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


void get_move( char** board, int* row, int* col){

	int num_args_read;
	do{
		printf("Enter a move in the form row, col: ");
		num_args_read = scanf("%d , %d", row, col);
	}while(!is_valid_move(num_args_read, 2, board, *row, *col));
}

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

void display_board( char** board){
int row, col;
	printf("  ");
	for(col = 0; col < num_cols; ++col){
		printf("%d ", col);
	}
	printf("\n");
	for(row = 0; row < num_rows; ++row){
		printf("%d ", row);
		for(col = 0; col < num_cols; ++col){
			printf("%c ", board[row][col]);
		}
		printf("\n");
	} 
}

void set_up(char*** board, int* turn){

	*board = make_board();
	*turn = 0; //player 1 is 0, player 2 is 1
}

char** make_board(){
	
	char** board = (char**)malloc(num_rows * sizeof(char*));
	int i,j;
	for(i = 0; i < num_rows; ++i){
		board[i] = (char*)malloc(num_cols * sizeof(char));
		for(j = 0; j < num_cols; ++j){
			board[i][j] = blank_space;
		}
	}
	return board;
}

void play_move(char** board, int row, int col, int turn){
	char pieces[] = {'X', 'O', '\0'};
	board[row][col] = pieces[turn];

}
void change_turn(int* turn){

	*turn = (*turn + 1) % 2;
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

void clean_up(char*** board){

	int row;
	
	for(row = 0; row < num_rows; ++row){
		free((*board)[row]);
	}
	free(*board);
	
	*board = NULL;

}

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
