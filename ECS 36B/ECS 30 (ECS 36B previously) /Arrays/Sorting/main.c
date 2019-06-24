#include <stdio.h>

void sort(int nums[], int len);

int findPositionOfMin(int nums[], int startPos, int len);
void swap(int nums[], int pos1, int pos2);

int findPositionOfMin(int nums[], int startPos, int len){
  int smallPos = startPos; //assume that starting number is smallest
  for (int i = startPos + 1; i < len; ++i) {
    if(nums[i] < nums[smallPos]){
      smallPos = i;
    }
  }
  return smallPos;
}

void swap(int nums[], int pos1, int pos2){
  int temp = nums[pos2];
  nums[pos2] = nums[pos1];
  nums[pos1] = temp;
}

void sort(int nums[], int len){
  //for i from 0 to the length
    //find the smallest number starting at i
    //swap that number with the element at array position i

  int smallPos;
  for (int i = 0; i < len; ++i) {
    smallPos = findPositionOfMin(nums, i, len);
    swap(nums, i, smallPos);
  }

}

void printArray(const int* array, int len);

int main() {
  int nums[] = {17, 8, 12, 5, 9, 8};
  int len = 6;
  sort(nums, len);

  printArray(nums, len);

  return 0;
}

void printArray(const int* array, int len) {
  for (int i = 0; i < len; ++i) {
    printf("%d ", array[i]);
  }
  printf("\n");
}