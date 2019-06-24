#include <stdio.h>
#include <stdlib.h>

void skip_line(FILE* fil);
char* read_next_field(FILE* fil);
void read_pound_file(FILE* fil, int* num_lines,
										 char *** Names, char*** Ages,
									   char*** Breeds, char*** Sexes,
										 char*** Spayed, char*** Vaccinated);
										 
void print_pound(int num_lines,
								 char ** Names, char** Ages,
							   char** Breeds, char** Sexes,
								 char** Spayed, char** Vaccinated);
								 
void delete_pound(int num_lines,
								 char ** Names, char** Ages,
							   char** Breeds, char** Sexes,
								 char** Spayed, char** Vaccinated);

void skip_line(FILE* fil){
	//skip a line of the file
	char c;
	fscanf(fil, "%c", &c);
	while(!feof(fil)){
		if(c == '\n'){
			break;
		} else{
			fscanf(fil, "%c", &c);
		}
	}
}

char* read_next_field(FILE* fil){
	/*
	read the next field from fil and return it

	*/

	int field_size = 5;
	char* field = (char*)malloc(field_size * sizeof(char)); //default field size is 4 characters
	char next_char;
	int num_chars_read = 1;
	
	fscanf(fil, "%c", &next_char);
	//while we haven't reached the end of file or end of the field
	while(!feof(fil) && !(next_char == ',' || next_char == '\n')){
	
	if(num_chars_read >= field_size){ //field is full 
		field = realloc(field, field_size * 2); //make more space
		field_size *= 2;
	}
	
	field[num_chars_read - 1] = next_char; //fill in the character

	fscanf(fil, "%c", &next_char); //read next character
	num_chars_read++;

	}
	field[num_chars_read - 1] = '\0'; //null terminate the string

	return field;
}


void read_pound_file(FILE* fil, int* num_lines,
										 char *** Names, char*** Ages,
									   char*** Breeds, char*** Sexes,
										 char*** Spayed, char*** Vaccinated  
										){

	*num_lines = 0;

	skip_line(fil); //skip the header
	while(!feof(fil)){ //while we haven't reachd the end of the file
		//make space for the row
		*Names = (char**)realloc(*Names, (*num_lines + 1) * sizeof(char*));
		*Ages = (char**)realloc(*Ages, (*num_lines + 1) * sizeof(char*));
		*Breeds = (char**)realloc(*Breeds, (*num_lines + 1) * sizeof(char*));
		*Sexes = (char**)realloc(*Sexes, (*num_lines + 1) * sizeof(char*));
		*Spayed = (char**)realloc(*Spayed, (*num_lines + 1) * sizeof(char*));
		*Vaccinated = (char**)realloc(*Vaccinated, (*num_lines + 1) * sizeof(char*));

		//fill in the fields
		(*Names)[*num_lines] = read_next_field(fil);
		(*Ages)[*num_lines] = read_next_field(fil);
		(*Breeds)[*num_lines] = read_next_field(fil);
		(*Sexes)[*num_lines] = read_next_field(fil);
		(*Spayed)[*num_lines] = read_next_field(fil);
		(*Vaccinated)[*num_lines] = read_next_field(fil);

		(*num_lines)++;
	}
	(*num_lines)--; //counted one line too many
}

void print_pound(int num_lines,
								 char ** Names, char** Ages,
							   char** Breeds, char** Sexes,
								 char** Spayed, char** Vaccinated){

	int i;

	for(i = 0; i < num_lines; ++i){
		printf("%10s | %10s | %10s | %10s | %10s | %10s\n", 
		Names[i], Ages[i], Breeds[i], Sexes[i], Spayed[i], Vaccinated[i]);
	}


}

void delete_pound(int num_lines,
								 char ** Names, char** Ages,
							   char** Breeds, char** Sexes,
								 char** Spayed, char** Vaccinated){

	int i;

	for(i = 0; i < num_lines; ++i){
		free(Names[i]);
		free(Ages[i]);
		free(Breeds[i]);
		free(Sexes[i]);
		free(Spayed[i]);
		free(Vaccinated[i]);
	}
	
	free(Names);
	free(Ages);
	free(Breeds);
	free(Sexes);
	free(Spayed);
	free(Vaccinated);
}



int main(){
	char** Names = NULL;
	char** Ages = NULL;
	char** Breeds = NULL; 
	char** Sexes = NULL;
	char** Spayed = NULL;
	char** Vaccinated = NULL;

	int num_lines = 0 ;
	

	FILE* pound_file = fopen("pound.csv", "r");	
	
	read_pound_file(pound_file, &num_lines, 
									&Names, &Ages, 
									&Breeds, &Sexes, 
									&Spayed, &Vaccinated);
	print_pound(num_lines, 
							Names, Ages, 
							Breeds, Sexes, 
							Spayed, Vaccinated);
							
	delete_pound(num_lines, 
							Names, Ages, 
							Breeds, Sexes, 
							Spayed, Vaccinated);
	
	fclose(pound_file);

	return 0;

}
