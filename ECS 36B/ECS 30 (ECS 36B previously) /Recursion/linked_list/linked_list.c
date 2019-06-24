#include <stdlib.h>
#include <stdio.h>
#include "linked_list.h"

Node* makeNode(int value, Node* next) {
  Node* newNode = malloc(sizeof(*newNode));
  newNode->value = value;
  newNode->next = next;
  return newNode;
}

void add_to_linked_list(int value, Node** head) {
  //add value to the front of the list
  Node* newNode = makeNode(value, *head);
  *head = newNode;
}

void print_linked_list_rec(Node* head) {
  if (head == NULL) {
    printf("\n");
  } else {
    printf("%d ", head->value);
    print_linked_list_rec(head->next);
  }
}

void print_lined_list_itr(Node* head) {
  for (Node* curNode = head; curNode != NULL; curNode = curNode->next) {
    printf("%d ", curNode->value);
  }
  printf("\n");
}

void _delete_linked_list(Node* head) {
  if (head == NULL) {
    return;
  } else {
    _delete_linked_list(head->next);
    free(head);
  }
}

void delete_linked_list(Node** head) {
  _delete_linked_list(*head);
  *head = NULL;
}

Node* makeLinkedListFromArrayItr(int* ar, int len) {
  Node* head = NULL;
  for (int i = len - 1; i >= 0; --i) {
    add_to_linked_list(ar[i], &head);
  }
  return head;
}

Node* makeLinkedListFromArrayRec(int* ar, int len) {
  if (len == 0) {
    return NULL;
  } else {
    Node* head = malloc(sizeof(*head));
    head->value = ar[0];
    head->next = makeLinkedListFromArrayRec(ar + 1, len - 1);
    return head;
  }
}

int getLinkedListLengthRec(Node* head) {
  if (head == NULL) {
    return 0;
  } else {
    return 1 + getLinkedListLengthRec(head->next);
  }
}

int getLinkedListLengthItr(Node* head) {
  int len = 0;
  for (Node* curNode = head; curNode != NULL; curNode = curNode->next) {
    len++;
  }
  return len;
}

int getLinkedListSumRec(Node* head) {
  if (head == NULL) {
    return 0;
  } else {
    return head->value + getLinkedListSumRec(head->next);
  }
}

int getLinkedListSumItr(Node* head) {
  int sum = 0;
  for (Node* curNode = head; curNode != NULL; curNode = curNode->next) {
    sum += curNode->value;
  }
  return sum;
}

bool LinkedListContainsRec(int value, Node* head) {
  if (head == NULL) {
    return false;
  } else if (head->value == value) {
    return true;
  } else {
    return LinkedListContainsRec(value, head->next);
  }
}

bool LinkedListContainsItr(int value, Node* head) {
  for (Node* curNode = head; curNode != NULL; curNode = curNode->next) {
    if (curNode->value == value) {
      return true;
    }
  }
  return false;
}

bool getItemIRec(int i, Node* head, int* value) {
  if (head == NULL) {
    return false;
  } else if (i == 0) {
    *value = head->value;
    return true;
  } else {
    return getItemIRec(i - 1, head->next, value);
  }
}

bool getItemIItr(int i, Node* head, int* value) {
  int curI = 0;
  for (Node* curNode = head; curNode != NULL; curNode = curNode->next) {
    if (curI == i) {
      *value = curNode->value;
      return true;
    }
    ++curI;
  }
  return false;
}

/**
 * Delete all occurences of value from the linked list
 * @param value
 * @param head
 * @return
 */
Node* deleteAllValuesRec(int value, Node* head) {
  if (head == NULL) {
    return NULL;
  } else {
    Node* rest = deleteAllValuesRec(value, head->next);
    if (head->value == value) {
      free(head);
      return rest;
    } else {
      head->next = rest;
      return head;
    }
  }
}

Node* deleteAllValuesItr(int value, Node* head) {
  for (Node* curNode = head, * prevNode = NULL; curNode != NULL;) {
    if (curNode->value == value) {
      if (prevNode != NULL) {
        prevNode->next = curNode->next;
      } else {
        head = curNode->next;
      }
      Node* next = curNode->next;
      free(curNode);
      curNode = next;
    } else {
      prevNode = curNode;
      curNode = curNode->next;
    }
  }
  return head;
}

Node* sortedInsertRec(int value, Node* head) {
  if (head == NULL) {
    return makeNode(value, NULL);
  } else if (value < head->value) {
    return makeNode(value, head);
  } else {
    head->next = sortedInsertRec(value, head->next);
    return head;
  }
}

Node* sortedInsertItr(int value, Node* head) {

  Node* prevNode = NULL;
  Node* newNode = NULL;
  for (Node* curNode = head; curNode != NULL; prevNode = curNode, curNode = curNode->next) {
    if (value < curNode->value) {
      newNode = makeNode(value, curNode);
      break;
    }
  }

  if (newNode == NULL) { newNode = makeNode(value, NULL); }

  if (prevNode != NULL) {
    prevNode->next = newNode;
  } else {
    head = newNode;
  }
  return head;
}

Node* makeSorted(Node* head) {
  Node* sortedHead = NULL;

  for(Node* curNode = head; curNode != NULL; curNode = curNode->next){
    sortedHead = sortedInsertRec(curNode->value, sortedHead);
  }
  delete_linked_list(&head);
  return sortedHead;

}


