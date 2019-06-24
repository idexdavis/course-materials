#include <stdio.h>
#include <stdlib.h>

char* copy_string(char* orig);

int main(int argc, char** argv){

	char* copy = copy_string(argv[1]);
	printf("%s is a copy of %s\n", copy, argv[1]);
	free(copy);
	return 0;
}
