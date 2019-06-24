#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <ctype.h>


//this is an enumerated type
//it allows us to make a new type that
//can only take on a finite set of values
//in this case male and female
typedef enum {male, female} Sex_type;

//This defines a new struct
//it allows us to group logically related
//values into a single type
typedef struct dog_type{
	char* Name; //dog's have a name
	int Age; //an age
	char* Breed;// a breed 
	Sex_type Sex;// a sex
	bool Spayed; //been spayed or neutered or not
	bool Vaccinated; //and have been vacinated or not
} Dog;


void skip_line(FILE* fil);
char* read_next_field(FILE* fil);
Sex_type char2Sex(char c);
void read_pound_file(FILE* fil, int* num_lines, Dog** Dogs);
void deleteDog(Dog dog);
void delete_pound(int num_lines, Dog* Dogs);
void print_pound(int num_lines, Dog* Dogs);

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


Sex_type char2Sex(char c){
	//converts a character to a sex
	if(tolower(c) == 'm'){
		return male;
	} else{
		return female;
	}

}

void read_pound_file(FILE* fil, int* num_lines, Dog** Dogs){
	//read in the pound file

	*num_lines = 0;
	
	char *field;

	skip_line(fil); //skip the header
	while(!feof(fil)){ //while we haven't reachd the end of the file
		//make space for another dog
		*Dogs = (Dog*)realloc(*Dogs, (*num_lines + 1) * sizeof(Dog)); 
		(*Dogs)[*num_lines].Name = read_next_field(fil);
		
		field = read_next_field(fil);
		sscanf(field, "%d", &((*Dogs)[*num_lines].Age));
		free(field);
		
		(*Dogs)[*num_lines].Breed = read_next_field(fil);
		
		field = read_next_field(fil);
		(*Dogs)[*num_lines].Sex = char2Sex(*field);
		free(field);
		
		field = read_next_field(fil);
		(*Dogs)[*num_lines].Spayed = *field == 'Y';
		free(field);
		
		field = read_next_field(fil);
		(*Dogs)[*num_lines].Vaccinated = *field == 'Y';
		free(field);

		(*num_lines)++;
	}
	(*num_lines)--; //counted one line too many
}


void print_pound(int num_lines, Dog* Dogs){
	//displays all the dogs in the pound

	int i;

	for(i = 0; i < num_lines; ++i){
		printf("%10s | %10d | %10s | ", 
		Dogs[i].Name, Dogs[i].Age, Dogs[i].Breed);
		
		if(Dogs[i].Sex == male){
			printf("Male   | ");
		} else{
			printf("Female | ");
		}
		if(Dogs[i].Spayed){
			printf("Y | ");
		}else{
			printf("N | ");
		}
		
		if(Dogs[i].Vaccinated){
			printf("Y\n");
		}else{
			printf("N\n");
		}
	}
	
	
	
}


void deleteDog(Dog dog){
	free(dog.Name);
	free(dog.Breed);
}

void delete_pound(int num_lines, Dog* Dogs){

	int i;

	for(i = 0; i < num_lines; ++i){
		deleteDog(Dogs[i]);
	}
	
	free(Dogs);
}


int main(){
	Dog* pound_puppies = NULL;
	int num_lines;
	
	FILE* pound_file = fopen("pound.csv", "r");

	read_pound_file(pound_file, &num_lines, &pound_puppies);
	print_pound(num_lines, pound_puppies);
	delete_pound(num_lines, pound_puppies);
	fclose(pound_file);

	return 0;
}



