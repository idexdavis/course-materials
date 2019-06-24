#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>


char* readAnyLenStr(){

	char* str = NULL;
	int size = 0;
	do{
		size++;
		str = (char*) realloc(str, size * sizeof(char)); 
		scanf("%c", &str[size -1]);
	}while(!isspace(str[size-1]));
	str[size-1] = '\0';
	return str;
}

int main(){

	char* s = NULL;
	printf("Enter a string: ");
	s = readAnyLenStr();
	printf("You entered: %s\n", s);
	free(s);
	return 0;
}
