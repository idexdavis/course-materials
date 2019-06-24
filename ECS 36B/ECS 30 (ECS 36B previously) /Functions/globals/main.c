#include <stdio.h>

int gnum = 0;


void setGnum(int val);
void add1Gnum();
void printGnum();
void hidden(int val);

void setGnum(int val){
  gnum = val;
}

void add1Gnum(){
  gnum = gnum + 1;
}

void printGnum(){
  printf("The value of gnum is %d\n", gnum);
}

void hidden(int val){
  // this variable is not the global variable
  // it is a local variable that just
  // happens to have the same name
  // because it has the same name
  // we can no longer access the global gnum
  // but will always access the local gnum in this function

  int gnum = val;

  printf("The local gnum inside hidden was set to %d for this call\n", gnum);
}


int main() {
  double x = 5;
  printGnum();

  add1Gnum();
  printGnum();

  add1Gnum();
  printGnum();

  setGnum(10);
  printGnum();

  add1Gnum();
  printGnum();

  hidden(35);
  printGnum();

  hidden(16);
  printGnum();
  return 0;
}