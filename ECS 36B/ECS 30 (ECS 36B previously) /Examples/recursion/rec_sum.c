#include <stdio.h>
int rec_sum(int* nums, int len){

	if(len == 0){
		return 0;
	}
	else{
		//sum of a non empty list is 
		//the first element plus the sum of the rest
		// nums[0] == *(nums + 0) == *nums
		return *nums + rec_sum(nums + 1, len - 1);
	}

}

int main(){
  int nums[] = {1,2,3,4,5,27};
  printf("%d\n", rec_sum(nums, 6));
  return 0;
}
