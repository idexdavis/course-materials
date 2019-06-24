#include <stdio.h>
#include <stdlib.h>

typedef struct csv_type{
	char*** data;
	int num_rows;
	int num_cols;
} CSV;

const int MAX_FIELD_LEN = 30 + 1;


void print_csv(CSV csv){
	int i,j;
	for(i = 0; i < csv.num_rows; i++){
		for(j =0; j < csv.num_cols; j++){
			printf("%*s |", MAX_FIELD_LEN, csv.data[i][j]);
		}
		printf("\n");
	}
}

void delete_csv(CSV* csv){
	int i,j;
	for(i = 0; i < csv->num_rows; i++){
		for(j =0; j < csv->num_cols; j++){
			free(csv->data[i][j]);
		}
		free(csv->data[i]);
	}
	free(csv->data);
	csv->data = NULL;
	csv->num_rows = 0;
	csv->num_cols = 0;
}

int read_csv(char* file_name, CSV* csv){
	
	FILE* file = NULL;
	int i,j,k;
	char c = '\0';
	
	file = fopen(file_name, "r"); 
	
	if(file == NULL){
		return -1;
	}
	
	//initialze variables
	
	csv->num_rows = 0; //equivalent to (*csv).num_rows = 0;
	csv->num_cols = 0; //equivalent to (*csv).num_cols = 0;

	//first figure out how many columns there are
	
	while(!feof(file) && c != '\n'){
		fscanf(file, "%c", &c);
		if(c == ','){
			csv->num_cols++;
		}
	}
	csv->num_cols++; //have to count the last field between the comma and new line
	
	//then figure out how many rows there are
	while(!feof(file)){
		if(c == '\n'){
			csv->num_rows++;
		}
		fscanf(file, "%c", &c);
	}
	
	//make space for the data
	csv->data = (char***)malloc(csv->num_rows*sizeof(char**));
	
	for(i = 0; i < csv->num_rows; i++){
		csv->data[i] = (char**)malloc(csv->num_cols * sizeof(char*));
		for(j = 0; j < csv->num_cols; j++){
		csv->data[i][j] = (char*)malloc(MAX_FIELD_LEN*sizeof(char));
		}
	}

	//go back to beginning of file
	fseek(file, 0, SEEK_SET);
	
	for(i = 0; !feof(file) && i < csv->num_rows; i++){
		for(j = 0; !feof(file) && j < csv->num_cols; j++){
			fscanf(file, "%c", &c);
			k = 0;
			while(!feof(file) && !(c == ',' || c=='\n')){
				csv->data[i][j][k] = c;
				fscanf(file, "%c", &c);
				k++;
			}
			csv->data[i][j][k] = '\0'; //put the null character in
		}
	}
			
	fclose(file);
	return 0;
}

int main(int argc, char** argv){
	CSV my_csv;
	read_csv(argv[1], &my_csv);
	print_csv(my_csv);
	delete_csv(&my_csv);
	
	return 0;

}
