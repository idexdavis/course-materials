typedef Board_Struct{
	char** the_board;
	int num_rows;
	int num_cols;
} Board;

int a = 7;
int* p = &a;
int* q = p;
*q = 99;
*p

void print_board(Board board){
	int i, j;
	
	for(i = 0; i < board.num_rows; ++i){
		for(j = 0; j < board.num_cols; ++j){
			printf("%c ", board.the_board[i][j]);
		}
		printf("\n");
	}
}

bool set_spot(Board* board, int row, int col, char value){
	//(*board).num_rows == board -> num_rows
	if( row >=0 && row < board->num_rows && 
			col >=0 && col <board ->num_cols)){
		board->the_board[row][col] = value;
		return true;
	}
	else{
		return false;
	}
}


Board board_cpy(Board orig){
	Board cpy;
	int i, j;
	
	cpy.num_rows = orig.num_rows;
	cpy.num_cols = orig.num_cols;
	//cpy.the_board = orig.the_board;
	cpy.the_board = (char**)malloc(cpy.num_rows *sizeof(char*));
	
	for(i = 0; i < cpy.num_rows; ++i){
		cpy.the_board[i] = (char*)malloc(cpy.num_cols *sizeof(char));
		for(j = 0; j < cpy.num_cols; ++j){
			cpy.the_board[i][j] = orig.the_board[i][j];
		}
	}
	
	return cpy;


}

