#include <stdio.h>


int main(int argc, char** argv){
	//argv[1] path to file
	//argv[2] string to add to the the end of the file
	
	FILE* fp = fopen(argv[1], "a");
	
	if(fp == NULL){
		printf("Could not open %s\n", argv[1]);
		return 0;
	}
	
	else{
	
		fprintf(fp, "%s\n", argv[2]);
	
	}
	
	
	return 0;

}
