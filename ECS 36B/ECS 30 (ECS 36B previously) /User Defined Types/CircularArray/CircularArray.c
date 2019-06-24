//
// Created by mfbut on 7/25/2018.
//

#include "CircularArray.h"

void addElement(int value, CircularArray* circleArray) {
  circleArray->values[circleArray->curSize] = value;
  circleArray->curSize = (circleArray->curSize );

}

int getNextElement(CircularArray* circleArray) {
  int val = circleArray->values[circleArray->curPos];
  circleArray->curPos = (circleArray->curPos + 1) % (circleArray->maxSize);
  circleArray->curSize--;
  return val;
}
