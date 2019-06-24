#include <stdlib.h>
#include <stdio.h>

int main(int argc, char** argv){
	FILE* file = NULL;
	char c;
	
	file = fopen(argv[1], "r");
	
	if(file == NULL){
		printf("Could not open %s\n", argv[1]);
		exit(0);
	}
	
	while(!feof(file)){
		fscanf(file, "%c", &c);
		printf("%c", c);
	}
	
	fclose(file);
	return 0;
}

