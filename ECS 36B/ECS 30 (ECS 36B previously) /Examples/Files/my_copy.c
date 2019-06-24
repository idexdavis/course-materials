#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* argv[]){
	FILE* src = NULL;
	FILE* dest = NULL;
	char c;

	if(argc != 3){
		printf("Wrong number of arguments\n");
		return 0;
	}
	src = fopen(argv[1], "r");
	if(src == NULL){
		printf("Could not open %s\n", argv[1]);
		return 0;
	}
	
	dest = fopen(argv[2], "w");
	if(dest ==NULL){
		printf("Could not open %s\n", argv[2]);
		return 0;
	}
	
	fscanf(src, "%c", &c); //read character from source
	while(!feof(src)){
		fprintf(dest, "%c", c);//copy it over to dest
		fscanf(src, "%s", &c);
	} 
	
	fclose(src);
	fclose(dest);
	return 0;

}
//hello
//hello
