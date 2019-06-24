#include <stdlib.h>
#include <stdio.h>
#include "board.h"
#include "board_spec.h"

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

void clean_up(char*** board){

	int row;
	
	for(row = 0; row < num_rows; ++row){
		free((*board)[row]);
	}
	free(*board);
	
	*board = NULL;
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


