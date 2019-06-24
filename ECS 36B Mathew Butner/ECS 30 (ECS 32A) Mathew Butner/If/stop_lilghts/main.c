//this is a demo of a switch statement

//switch statemets are a convenient form 
//to do a serires of EQUALITY checks on a variable

#include <stdio.h>

#define GREEN 0
#define YELLOW 1
#define RED 2


/*
const int green = 0;
const int yellow = 1;
const int red = 2;
only literals are allowed in switch statements so these definitions wouldn't workd :(
*/

void traffic_behavior(int light_color){

  switch(light_color){ //the variable inside the switch stament is the 1 we are going to check against
    //the value after case is the one we compare the variable against

    case RED: //here we are checking if light_color is red
      //once we get inside a case we execute all the code that is there
      printf("Stop your car\n");
      break; //break causes us to leave the switch statement
      //generally you will have a break at the end of every case because
      //normally you only want 1 to be run

    case GREEN: //here we are checking if light_color is green
      printf("Continue on through\n");
      break;

    case YELLOW: //here we are checking if light_color is yellow
      //there can be more than 1 line of code in a case
      printf("Go faster!\n");
      printf("You can make it!\n");
      break;

    default: //optionally we can have a default case if none of the previous cases are run
      printf("I've never heard of a stoplight with that color\n");
      break;
  }
  printf("Lights are pretty\n");

} //traffic_behavior


void fall_through(int light_color){
  switch(light_color){
    //if your cases in a switch statement
    //do not have breaks in them then the cases will fall through to
    //the next one and will execute the code there

    case RED:
      printf("Stop your car\n");


    case GREEN: //here we are checking if light_color is green
      printf("Continue on through\n");

    case YELLOW: //here we are checking if light_color is yellow
      printf("Go faster!\n");
      printf("You can make it!\n");


    default: //optionally we can have a default case if none of the previous cases are run
      printf("I've never heard of a stoplight with that color\n");
      break;
  }

}


int main(){

  int light_color;
  printf("Enter the color of the light you are approaching\n");
  printf("0 for green\n1 for yellow\n2 for red\n");
  printf("Enter your number now: ");
  scanf("%d", &light_color);

  printf("Calling traffic_behavior\n\n");
  traffic_behavior(light_color);

  printf("\nCalling fall through\n\n");
  fall_through(light_color);

  return 0;
}
