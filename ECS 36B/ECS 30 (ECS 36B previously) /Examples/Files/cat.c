#include <stdlib.h>
#include <stdio.h>

int main(int argc, char** argv){
	FILE* file = NULL;
	char c;
	
	file = fopen(argv[1], "r");//mode r, w, a
														 //r+, w+, a+
	
	if(file == NULL){
		printf("Could not open %s\n", argv[1]);
		exit(0);
	}
	
	fscanf(file, "%c", &c);
	while(!feof(file)){
		printf("%c", c);
		fscanf(file, "%c", &c);
	}
	
	fclose(file);
	return 0;
}
