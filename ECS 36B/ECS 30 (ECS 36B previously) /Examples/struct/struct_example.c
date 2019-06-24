

typedef struct Birthday_Struct{
	int month;
	int day;
	int year;

}Birthday;

typedef struct Person_Struct{
	char fname[20];
	char lname[20];
	int age;
	Birthday bday;
} Person;

int main(){
	Person me;
	
	Person people[10];
	Person* other_people = (Person*)malloc(10 * sizeof(Person));
	int ages[10];
	char fnames[10][20];
	char lnames[10][20];

	strcpy(me.fname, "Matthew");
	strcpy(me.lname, "Butner");

	me.age = 24;

	me.bday.month = 3;
	me.bday.year = 1990;
	me.bday.day = 8;
	return 0;
}

Person clone_person(Person original){
	Person clone;
	
	strcpy(clone.fname, original.fname);
	strcpy(clone.lname, original.lname);
	clone.age = 0;
	clone.bday.month = 11;
	clone.bday.day = 14;
	clone.bday.year = 2016;
	
	return clone;
}

void clone_person(Person original, Person* clone){
	strcpy((*clone).fname, original.fname);
	strcpy((*clone).lname, original.lname);
	clone->age = 0; // (*clone).age = 0
	(clone->bday).month = 11;
	((*clone).bday).day = 14;
	clone->bday.year = 2016;
	
}

Person ten_peeps[10];

Person* people;
people = (Person*)malloc(100 *sizeof(Person));

typedef struct Board_struct{
	int num_rows;
	int num_cols;
	char** the_board;
	int* heights;
}

BOARD;

typedef int fun_time;

BOARD b;

void print_board(BOARD b){
	int i,j;
	for(i =0; i < b.num_rows; i++){
		for(j =0; j < b.num_cols; j++){
			printf("%c ", b.the_board[i][j])
		}
		printf("\n");
	}
}

