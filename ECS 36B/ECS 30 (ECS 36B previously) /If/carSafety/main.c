// demonstrate use of if if if
// by figuring out what safetey features a car has
#include <stdio.h>

int main() {
  printf("Hello, World!\n");

  int carYear;

  printf("Enter the year your car was made: ");
  scanf("%d", &carYear);

  if(carYear < 1970){
    printf("No safety\n");
  }

  if(carYear >= 1970){
    printf("Probably Has seatbelts\n");
  }
  if(carYear >= 1990){
    printf("Probably has antilock breaks\n");
  }
  if(carYear >= 2000){
    printf("Probably has air bags\n");
  }


  return 0;
}