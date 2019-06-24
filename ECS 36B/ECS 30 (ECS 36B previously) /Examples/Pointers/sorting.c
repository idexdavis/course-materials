#include <stdio.h>
#include <stdlib.h>

//a =10
//b = 7
//swap a and b
//b = 10
//a = 7

void swap(int* a, int* b);

void make_sorted(int* nums, int size);
int* get_sorted(int* nums, int size);

void sorted_insert(int** sorted_ar, int* size, int val);

int* make_copy(int* nums, int size);
int* make_random_array(int size, int min, int max);
void print_ar(int* ar, int size);

void swap(int* a, int* b){
	//swap the values a and b
	int temp = *a;
	*a = *b;
	*b = temp;
}

//5, 12, 3, 8
//3, 12, 5, 8
//// 3, 5, 12, 8
//3, 5, 8, 12

void make_sorted(int* nums, int size){
	//sort nums in place

	int i, j;
	int* min = NULL; //pointer to the smallest element 
									
	for(i = 0; i < size; ++i){ //for the ith minimum
		min = nums + i; //assume element i is the smallest
		for(j = i +1; j < size; ++j){ //go through the remaining elements
			if(nums[j] < *min){//and if we find one that is smaller
				min = nums + j;//update our assumpution
			}
		}
		swap(min, nums + i); //not what we've locate the ith minimum swap it with the element at position i
	}
}


int* get_sorted(int* nums, int size){

	int* copy = make_copy(nums, size);
	make_sorted(copy, size);
	return copy;
}


int* make_copy(int* nums, int size){
	//make a copy of nums that contains size elements
	int* copy = (int*)malloc(size * sizeof(int));
	int i;
	for(i = 0; i < size; ++i){
		copy[i] = nums[i];
	}
	return copy;
}

//1, 12, 45, 50, 80
//sorted insert 15
//1, 12, 15, 45, 50, 80

//1, 12, 45, 80,-----
//1, 12, -----, 45, 80
//1, 12, 15, 45, 80
void sorted_insert(int** sorted_ar, int* size, int val){
	/*
	insert val into a sorted array that is size big
	*/
	int i;
	(*size)++; //one more element in the array
	//the reason that we need the int** is because of the following line
	*sorted_ar = realloc(*sorted_ar, *size * sizeof(int)); 
	//we are trying to change sorted_ar outside of the function
	//who's type is int*, so our function needs an int**

	for(i = *size - 1; i >= 0; --i){ //go through the elements of the array starting from the end	
		if(i == 0){ //of we've reached the beginning of the array
			(*sorted_ar)[i] = val; //put the value there
			break;
		}
		else if( val < (*sorted_ar)[i-1]){//value comes before the current spot
			(*sorted_ar)[i] = (*sorted_ar)[i-1];//so shuffle the elements over
		}
		else{//we've located the spot for value
			(*sorted_ar)[i] = val;//put it there
			break;
		}
	}

}

int* make_random_array(int size, int min, int max){
	/*
	create an array of size random integers between [min, max]
	*/
	int* ar = (int*)malloc(size * sizeof(int));
	int i;
	for(i = 0; i < size; ++i){
		ar[i] = min + (rand() % (max - min + 1));
	}
	return ar;
}


void print_ar(int* ar, int size){
	/*
	print the array on a single line
	*/
	int i;
	for(i = 0; i < size; ++i){
		printf("%d ", ar[i]);
	}
	printf("\n");
}

int main(){
	srand(5);
	int size = 10;
	int max = 50, min = 0;
	int* org = make_random_array(10, min, max);
	int* sorted = get_sorted(org, size);
	int val;
	
	printf("Before Sorting: ");
	print_ar(org, size);
	
	printf("After Sorting: ");
	print_ar(sorted, size);
	
	do{
		printf("Enter a number to put into sorted ar or a negative number to quit: ");
		scanf("%d", &val);
		sorted_insert(&sorted, &size, val);
		printf("The sorted array is now: ");
		print_ar(sorted, size);
	}while(val >= 0);
	
	free(org);
	free(sorted);
	
	return 0;

}



