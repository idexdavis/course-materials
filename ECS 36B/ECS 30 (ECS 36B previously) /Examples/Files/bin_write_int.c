
#include <stdio.h>
int main(){

	FILE* fp = fopen("bin_ints.bin", "wb+");
	
	int array[] = {10,20,30,40};
	int dest[4];
	int size = 4;
	
	fwrite(array, sizeof(int), size, fp);
	
	fseek(fp, 0, SEEK_SET);//go to the beginning of the file
	fread(dest, sizeof(int), 2, fp);
	fread(dest+2, sizeof(int), 2, fp);
	
	for(int i = 0; i < size; ++i){
		printf("%d ", dest[i]);
	}
	printf("\n");
	
	return 0;


}
