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
	src = fopen(argv[1], "rb");
	if(src == NULL){
		printf("Could not open %s\n", argv[1]);
		return 0;
	}
	
	dest = fopen(argv[2], "wb");
	if(dest ==NULL){
		printf("Could not open %s\n", argv[2]);
		return 0;
	}
	
	fread(&c, sizeof(char), 1, src); //read character from source
	while(!feof(src)){
		fwrite(&c, sizeof(char), 1, dest);//copy it over to dest
		fread(&c, sizeof(char), 1, src);
	} 
	10
	0000 0000 0000 0000 0000 0000 0000 1010
	fclose(src);
	fclose(dest);
	return 0;

}
