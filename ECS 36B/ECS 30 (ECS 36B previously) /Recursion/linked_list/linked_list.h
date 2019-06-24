//
// Created by mfbut on 12/4/2017.
//

#ifndef LINKED_LIST_LINKED_LIST_H
#define LINKED_LIST_LINKED_LIST_H
#include <stdbool.h>
typedef struct NODE_STRUCT {
  int value;
  struct NODE_STRUCT* next;
} Node;

Node* makeNode(int value, Node* next);

void add_to_linked_list(int value, Node** head);

void print_linked_list_rec(Node* head);
void print_lined_list_itr(Node* head);

void delete_linked_list(Node** head);
void _delete_linked_list(Node* head);

Node* makeLinkedListFromArrayItr(int* ar, int len);
Node* makeLinkedListFromArrayRec(int* ar, int len);

int getLinkedListLengthRec(Node* head);
int getLinkedListLengthItr(Node* head);

int getLinkedListSumRec(Node* head);
int getLinkedListSumItr(Node* head);

bool LinkedListContainsRec(int value, Node* head);
bool LinkedListContainsItr(int value, Node* head);

bool getItemIRec(int i, Node* head, int* value);
bool getItemIItr(int i, Node* head, int* value);


Node* deleteAllValuesRec(int value, Node* head);
Node* deleteAllValuesItr(int value, Node* head);



Node* sortedInsertRec(int value, Node* head);
Node* sortedInsertItr(int value, Node* head);

//bool pop_first(Node** head, int* value_out);

Node* makeSorted(Node* head);
#endif //LINKED_LIST_LINKED_LIST_H
