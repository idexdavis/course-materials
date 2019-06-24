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
void move_tower(int disk, Peg* src, Peg* dest, Peg* spare, Peg* A, Peg*B, Peg* C);
void move_disk(Peg* src, Peg* dest);
void print_towers(Peg* src, Peg* dest, Peg* spare);


Peg make_peg(const int max_disks, const int num_disks, const char* name);
void destroy_peg(Peg* p);

int contains(int value, int* array, int len);

int contains(int value, int* array, int len){
  int i;
  
  for(i =0; i < len; i++){
    if(array[i] == value){
      return 1;
    }
  }
  return 0;
}//contains


void print_towers(Peg* src, Peg* dest, Peg* spare){
  const char tower_sep[] = "   ";
  const int tower_width = src->max_disks;
  
  char* row;
  char* empty_row;
  
  int num_spaces;
  int i,j, row_index;
  
  row = (char*)malloc((strlen(tower_sep) + 2*tower_width + strlen(tower_sep) + 1)*sizeof(char));
  empty_row = (char*)malloc((strlen(tower_sep) + 2*tower_width + strlen(tower_sep) + 1)*sizeof(char));
  
  for(i = 0; i < strlen(tower_sep) + 2*tower_width + strlen(tower_sep) + 1; i++){
    empty_row[i] = ' ';
  }
  empty_row[i] = '\0';
  
  for(i = 1; i <= tower_width; i++){
    num_spaces = tower_width - i;
    for(j = 0, row_index = 0; j < num_spaces; j++, row_index++){
      row[row_index] = ' ';
    }
    for(j = 0; j < i ; j++, row_index+=2){
      row[row_index] = '*';
      row[row_index+1] = ' ';
    }
    for(j = 0; j < num_spaces; j++, row_index++){
      row[row_index] = ' ';
    }
    row[row_index] = '\0';
    
    if(contains(i, src->disks, src->num_disks)){
      printf("%s %s %s\n", row, empty_row, empty_row);
    }
    else if(contains(i, dest->disks, dest->num_disks)){
      printf("%s %s %s\n", empty_row, row, empty_row);
    }
    else if(contains(i, spare->disks, spare->num_disks)){
      printf("%s %s %s\n", empty_row, empty_row, row);
    }
    else{
      printf("MISTAKE!!!\n");
    }
  
  }
  
  free(row);
  free(empty_row);
}

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

  move_tower(num_disks, &src, &dest, &spare, &src, &dest, &spare);
  
  destroy_peg(&src); destroy_peg(&dest); destroy_peg(&spare);
}

void move_tower(int disk, Peg* src, Peg* dest, Peg* spare, Peg* A, Peg*B, Peg* C){
  if(disk == 1){
    move_disk(src, dest);
    print_towers(A,B,C);
  } else{
    move_tower(disk - 1, src, spare, dest, A, B, C);
    move_disk(src, dest);
    print_towers(A,B,C);
    move_tower(disk - 1, spare, dest, src, A, B, C);
  }

}

int main(int argc, char** argv){
  towers_of_hanoi(atoi(argv[1]));
  return 0;
}
