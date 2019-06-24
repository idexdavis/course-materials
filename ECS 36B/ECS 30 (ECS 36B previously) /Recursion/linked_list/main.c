#include <stdio.h>
#include "linked_list.h"


int main() {
  Node* ll1 = NULL;
  Node* ll2 = NULL;
  int ar1[] = {12, -3, 4, 19, 8};
  int ar2[] = {33, -89, -57, 22, 99, 99, 7};
  ll1 = makeLinkedListFromArrayRec(ar1, 5);
  ll2 = makeLinkedListFromArrayItr(ar2, 7);
  print_linked_list_rec(ll1);
  print_lined_list_itr(ll2);
  delete_linked_list(&ll1);
  delete_linked_list(&ll2);

  return 0;
}