#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct PEG_STRUCT{
  int max_disks;
  int num_disks;
  int* disks;
  char name[6];
} Peg; 

void towers_of_hanoi(int num_disks);
void move_tower(int disk, Peg* src, Peg* dest, Peg* spare);
void move_disk(Peg* src, Peg* dest);

Peg make_peg(const int max_disks, const int num_disks, const char* name);
void destroy_peg(Peg* p);


Peg make_peg(const int max_disks, const int num_disks, const char* name){
  Peg p;
  int i;
  
  p.max_disks = max_disks;
  p.num_disks = num_disks;
  
  p.disks = (int*)malloc(max_disks*sizeof(int));
  
  for(i = 0; i < max_disks; i++){ //put in some sentinal values in case I screw up
    p.disks[i] = -99;
  }
  
  for(i = 0; i < num_disks; i++){ //fill in the peg
    p.disks[i] = num_disks - i;
  }
  strcpy(p.name, name);
  return p;
}

void destroy_peg(Peg* p){
  free(p->disks);
  p->max_disks = 0;
  p->num_disks = 0;
  p->disks = NULL;
}


void move_disk(Peg* src, Peg* dest){
  printf("Move disk %d from %s to %s\n", src->disks[src->num_disks - 1], src->name, dest->name);
 
  dest->disks[dest->num_disks] = src->disks[src->num_disks - 1];
  dest->num_disks++;
  
  src->disks[src->num_disks - 1] = -99;
  src->num_disks--;
}


void towers_of_hanoi(int num_disks){
  Peg src = make_peg(num_disks, num_disks, "src");
  Peg dest = make_peg(num_disks, 0, "dest");
  Peg spare = make_peg(num_disks, 0, "spare");

  move_tower(num_disks, &src, &dest, &spare);
  
  destroy_peg(&src); destroy_peg(&dest); destroy_peg(&spare);
}

void move_tower(int disk, Peg* src, Peg* dest, Peg* spare){
  if(disk == 1){
    move_disk(src, dest);
  } else{
    move_tower(disk - 1, src, spare, dest);
    move_disk(src, dest);
    move_tower(disk - 1, spare, dest, src);
  }

}

int main(int argc, char** argv){
  towers_of_hanoi(atoi(argv[1]));
  return 0;
}
