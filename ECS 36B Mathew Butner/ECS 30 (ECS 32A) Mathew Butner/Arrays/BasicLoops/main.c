#include <stdio.h>

int sum(int values[], int len);
double avg(int values[], int len);
int min(int values[], int len);
int max(int values[], int len);

int sum(int values[], int len) {
  int total = 0; //intialization
  for (int i = 0; i < len; ++i) { //iteration
    total += values[i]; //accumulation
  }
  return total;
}

double avg(int values[], int len) {
  return ((double)sum(values, len)) / ((double)len);
}

int min(int values[], int len) {
  int the_min = values[0]; //assume first number smallest
  for (int i = 1; i < len; ++i) { //for each remaining number
    if(values[i] < the_min){ //if it is smaller than the smallest
      the_min = values[i]; //make it the smallest
    }
  }
  return the_min;
}


int max(int values[], int len) {
  int the_max = values[0]; //assume first number is largest
  for (int i = 1; i < len; ++i) { //for each remaining number
    if(values[i] > the_max){ //if it is larger than the largest
      the_max = values[i]; //make it the largest
    }
  }
  return the_max;
}

int main() {
  int len = 5;
  int array[len];

  printf("Enter the size of the array: ");
  scanf("%d", &len);

  printf("Enter %d numbers\n", len);
  for (int i = 0; i < len; ++i) {
    printf("Enter number %d: ", i + 1);
    scanf(" %d", &array[i]);
  }
  printf("The sum of those numbers is %d\n", sum(array, len));
  printf("The avg of those numbers is %.2lf\n", avg(array, len));
  return 0;
}