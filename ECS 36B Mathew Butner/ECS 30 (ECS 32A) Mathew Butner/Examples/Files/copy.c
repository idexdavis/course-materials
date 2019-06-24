#include <stdlib.h>
#include <stdio.h>

int main(int argc, char** argv){
	FILE* src = NULL;
	FILE* dest = NULL;
	char c;
	
	src = fopen(argv[1], "rb");
	
	if(src == NULL){
		printf("Could not open %s\n", argv[1]);
		exit(0);
	}
	
	dest = fopen(argv[2], "wb");
	
	if(dest == NULL){
		fclose(src);
		printf("Could not open %s\n", argv[2]);
		exit(0);
	}
	
	fscanf(src, "%c", &c);
	while(!feof(src)){
		fprintf(dest, "%c", c);
		fscanf(src, "%c", &c);
	}
	
	fclose(src);
	fclose(dest);
	
	return 0;
	
}
	
