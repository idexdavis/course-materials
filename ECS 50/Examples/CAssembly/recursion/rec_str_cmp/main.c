#include <stdio.h>
int rec_str_cmp(char* str1, char* str2);

int main(int argc, char** argv){

	int cmp = rec_str_cmp(argv[1], argv[2]);
	
	if(cmp == 0){
		printf("%s and %s are the same string\n", argv[1], argv[2]);
	} else if(cmp < 0){
		printf("%s comes before %s \n", argv[1], argv[2]);
	} else{
		printf("%s comes after %s \n", argv[1], argv[2]);
	}
	return 0;
}
