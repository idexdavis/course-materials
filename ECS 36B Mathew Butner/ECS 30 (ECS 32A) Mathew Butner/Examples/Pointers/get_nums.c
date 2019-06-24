#include <stdio.h>
#include <stdlib.h>

int max(int* nums, int len){

	int i;
	int m = nums[0];
	
	for(i = 1; i < len; ++i){
		if(nums[i] > m){
			m = nums[i];
		}
	}
	return m;
}

int main(){

	int num_nums;
	int* numbers = NULL;
	int i;
	printf("Enter how many numbers you are going to enter: ");
	scanf("%d", &num_nums);
	
	numbers = (int*)malloc(num_nums * sizeof(int));
	
	for(i = 0; i < num_nums; ++i){
		printf("Enter your number: ");
		scanf("%d", &numbers[i]);
	}
	
	printf("The max of these numbers is %d\n", max(numbers, num_nums));;
	free(numbers);
	return 0;
}
