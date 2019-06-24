#include <stdlib.h>
#include <stdio.h>


typedef struct NODE_STRUCT{
 int value;
 struct NODE_STRUCT* next;
} Node;

void insert(Node** head, int value);
int contains(Node* head, int value);
int remove_elem(Node** head, int value);
int _remove_elem(Node** head, Node* prev, int value);
void print_list(Node* head);
void print_address(Node* head);
void destroy_list(Node* head);

void insert(Node** head, int value){
	//inserts value at the beginning of the list
	//and returns then new head of the list
	Node* new_node;
	
	new_node = (Node*)malloc(1*sizeof(Node));
	new_node->value = value;
	new_node->next = *head;
	
	*head = new_node;
}
int loop_contains(Node* head, int value){
	while(head != NULL){
		if(head->value == value){
			return 1;
		}
		head = head->next;
	}
	return 0;
}
int contains(Node* head, int value){
	if(head == NULL){
		return 0; //empty list, so didn't find the value
	} else if(head->value == value){
		return 1;
	} else{
		return contains(head->next, value);
	}
}

int remove_elem(Node** head, int value){
	return _remove_elem(head, NULL, value);
}

int _remove_elem(Node** head, Node* prev, int value){
	Node* temp;
	if(*head == NULL){
		return 0; //empty list, so didn't find the value
	} else if((*head)->value == value){
		if(prev == NULL){//removing first element
			temp = (*head)->next;
			free(*head);
			*head = temp;
			return 1;		
		} else{
			temp = (*head)->next; 
			free(*head);
			prev->next = temp;
			return 1;
		}		
	} else{
		return _remove_elem(&((*head)->next), *head, value);
	}
}

void print_list(Node* head){
	if(head == NULL){
		printf("\n");
		return;
	} else{
		printf("%d ", head->value);
		print_list(head->next);
	}
}

void print_address(Node* head){
	if(head == NULL){
		printf("\n");
		return;
	} else{
		printf("%p ", head);
		print_address(head->next);
	}
}

void destroy_list(Node* head){
	if(head == NULL){
		return;
	}else{
		destroy_list(head->next);
		free(head);
	}
}


int main(){
	int i;
	Node* head = NULL;
	for( i =0; i < 10; i++){
		insert(&head, i);
	}
	
	print_list(head);
	
	if(contains(head, 5)){
		printf("The list contains 5\n");
	}else{
		printf("The list does not contain 5\n");
	}
	
	if(contains(head, 100)){
		printf("The list contains 100\n");
	}else{
		printf("The list does not contain 100\n");
	}
	
	//remove_elem(&head, 9);
	print_list(head);
	print_address(head);
	remove_elem(&head, 7);
	print_list(head);
	
	destroy_list(head);
	return 0;
}

