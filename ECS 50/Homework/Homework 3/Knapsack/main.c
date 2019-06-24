#include <stdio.h>
#include <stdlib.h>

unsigned int knapsack(int* weights, unsigned int* values, unsigned int num_items, 
              int capacity, unsigned int cur_value);
              

void readFile(const char* file_name, int** weights, unsigned int** values, unsigned int* num_items, int* capacity){
	/*
		File is strucured as:
		capacity
		num_items
		weight1 value1
		weight2 value2
		weight3 value3
		...
	*/
	FILE* fptr;
	unsigned int i;
	
	fptr = fopen(file_name, "r");
	
	
	fscanf(fptr,"%d", capacity); //read capacity
	fscanf(fptr,"%d", num_items); //read capacity
	
	//make space 
	*weights = (int*) malloc(*num_items * sizeof(int));
	*values = (unsigned int*) malloc(*num_items * sizeof(unsigned int));
	
	//read weights and values
	for(i = 0; i < *num_items; i++){
		fscanf(fptr, "%d", *weights + i);
		fscanf(fptr, "%u", *values + i);
	}
	
	//close file
	fclose(fptr);

}


int main(int argc, char **argv){
  int* weights;
  unsigned int* values;
  unsigned int num_items;
  int capacity;
  unsigned int max_value;

  
  if(argc == 2){
  	//readFile
  	readFile(argv[1], &weights, &values, &num_items, &capacity);
  	
  	//find the max that we can carry
  	max_value = knapsack(weights, values, num_items, capacity, 0);
  	printf("%u\n", max_value); //display result
  	
  	//free space malloced
  	free(weights);
  	free(values);
  } else{
  	printf("Usage: knapsack.out arg_file\n");
  }

  return 0;
  
 }//main
              
