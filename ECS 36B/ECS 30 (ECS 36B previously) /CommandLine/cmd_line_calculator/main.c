//this program functions as a basic two input calculator
//of command line arguments

#include <stdio.h>
#include <stdbool.h>
#include <ctype.h>
#include <string.h>

bool contains(char value, char* items, int num_items){
	int i;
	for(i = 0; i < num_items; ++i){
		if(value == items[i]){//found the value we were looking for
			return true;
		}
	}
	return false; //else it isn't there
}

bool isnumber(char* string){
	int i;
	for(i =0; string[i] != '\0'; ++i){
		if(!isdigit(string[i])){
			return false;
		}
	}
	return true;
}

bool alt_isnumber(char* string){
	//sscanf like scanf returns the number of format specifies filled in
	//so if we have a number it should return 1
	int num, num_args_read;
	char junk;
	num_args_read = sscanf(string, "%d %c", &num, &junk);
	return num_args_read == 1;
}

int calculate(int num1, char operator, int num2){
	switch(operator){
		case '+':
			return num1 + num2;
		case '-':
			return num1 - num2;
		case '*':
			return num1 * num2;
		case '/':
			return num1 / num2;
		default:
			printf("Unexpected operator %c\n", operator);
			return 0;	
	}
}

int main(int argc, char* argv[]){
	int num1, num2, result;
	char operator;
	if(argc != 4){
		printf("Wrong number of arguments entered\n");
		printf("Input should be number [+-*/] number\n");
	}
	else if(!isnumber(argv[1])){
		printf("%s should be a number.\n", argv[1]);
	}
	else if(!(strlen(argv[2]) == 1
						&& contains(argv[2][0], "+-*/", 4))){
		printf("The second argument should be +, -, *, or / but is %s\n", argv[2]);
	}
	else if(!alt_isnumber(argv[3])){
		printf("%s should be a number.\n", argv[3]);
	}
	else{
		sscanf(argv[1], "%d", &num1);
		sscanf(argv[2], "%c", &operator);
		sscanf(argv[3], "%d", &num2);
		result = calculate(num1, operator, num2);
		printf("%d %c %d = %d\n", num1, operator, num2, result);
	}

	return 0;
}
