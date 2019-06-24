#include <stdio.h>

int main() {
  int piecesOfPizza, numPiecesEaten;
  double percentPizzaEaten;
  // get the number of slices
  printf("Enter the number of pieces of pizza there are: ");
  scanf("%d", &piecesOfPizza);

  printf("Enter how many pieces of pizza you ate: ");
  scanf("%d", &numPiecesEaten);

  percentPizzaEaten = ((double)numPiecesEaten) / ((double)piecesOfPizza) * 100;

  printf("You ate %.2lf%% of the pizza\n", percentPizzaEaten);

  return 0;
}