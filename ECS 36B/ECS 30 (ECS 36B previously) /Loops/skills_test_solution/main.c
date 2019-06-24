#include <stdio.h>

int main() {
  int numPos = 0, numNeg = 0, userNum;

  do{
    printf("Enter a positive or negative number or 0 to quit: ");
    scanf("%d", &userNum);

    if( userNum < 0){
      numNeg++;
    } else if(userNum > 0){
      numPos++;
    }
  }while(userNum != 0);

  printf("You entered %d positive numbers and"
             " %d negative numbers\n", numPos, numNeg);

  return 0;
}