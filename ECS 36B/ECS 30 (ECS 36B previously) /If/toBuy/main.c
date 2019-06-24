/*this program demonstrates the use of nested if statements
through a decision tree on whether or not to buy an item */

#include <stdio.h>

void item_decide(){
  char necessity, afford;
  int desire;

  printf("Do you want the item or need the item?\n"
             "Enter w for want and n for need: ");

  scanf(" %c", &necessity);

  if(necessity == 'n'){
    printf("Well if you need it, buy it.\n");
  }
  else if(necessity == 'w'){
    printf("Can you afford the item?\n"
               "Entery y for yes and n for no: ");
    scanf(" %c", &afford);

    if(afford == 'y'){
      printf("Buy the item.\n");
    }
    else if(afford == 'n'){
      printf("On a scale of 1 - 10 how much do you want the item: ");
      scanf("%d", &desire);
      if(desire < 7){
        printf("Use your self control and hold off on the purchase\n");
      }
      else{
        printf("Well I don't think I can say anything to stop you\n"
                   "but I hope you won't regret seeing it on your\n"
                   "credit card statement\n");
      }
    }
    else{
      printf("Invalid input (%c) entered for can affordability\n", afford);
    }

  }
  else{
    printf("You didn't enter w or n so you must neither\n"
               "need or want the item, so don't buy it\n");
  }
}//item_decide()

int main(){
  item_decide();
  return 0;
}
