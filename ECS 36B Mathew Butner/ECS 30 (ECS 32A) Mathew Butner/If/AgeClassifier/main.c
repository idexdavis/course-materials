/*
This program demonstrates the difference be if and else if
*/
#include <stdio.h>

void if_else_age(int age){
	/*classify a person by their age using else if statements
		if/else-if/else statement are evaluated from top to bottom
		the first one that is true is executed but none of the other ones will be
		So we should use if/else-if when we want mutual exclusion
		(we only want one branch to be run)
	*/
	if(age < 2){
		printf("You are a baby\n");
	}
	else if(age < 5){
		printf("You are a toddler\n");
	}
	else if(age < 13){
		printf("You are a child\n");
	}
	else if(age < 20){
		printf("You are a teenager\n");
	}
	else {
		printf("You are an adult\n");
	}
}

void bad_if_age(int age){
	/*here's an incorrect version of the above 
	where we only use if statments. Since they
	aren't part of an if else if chain all the 
	if statements are separate and EACH one could be run
	So use multiple if statments if it is ok for all
	of them to be run
	*/
	if(age < 2){
		printf("You are a baby\n");
	}
	
	if(age < 5){
		printf("You are a toddler\n");
	}
	
	if(age < 13){
		printf("You are a child\n");
	}
	
	if(age < 20){
		printf("You are a teenager\n");
	}
	else {//this else is paired with the if that comes right above it
		printf("You are an adult\n");
	}
}


void corrected_age(int age){
	/*This code gives the same effect as 
	the if/else-if version but is not as clear in my opinion
	*/
	if(age < 2){
		printf("You are a baby\n");
	}
	
	if(!(age < 2) && age < 5){
		printf("You are a toddler\n");
	}

	if(!(age < 2 || age < 5) && age < 13){
		printf("You are a child\n");
	}
	
	if(!(age < 2 || age < 5 || age < 13) && age < 20){
		printf("You are a teenager\n");
	}
	
	if (!(age < 2 || age < 5 || age < 13 || age < 20)) {
		printf("You are an adult\n");
	}
}


int main(){
	int age;
	printf("Please enter your age: ");
	scanf("%d", &age);
	
	printf("\nif_else_age output\n");
	if_else_age(age);
	printf("\nbad_if_age output\n");
	bad_if_age(age);
	/*
	printf("\ncorrected_age output\n");
	corrected_age(age);
	*/
	return 0;
}

 
 

