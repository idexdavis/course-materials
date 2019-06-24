//
// Created by mfbut on 8/13/2018.
//

#include <stdlib.h>
#include <stdio.h>
#include "Vector.h"

Vector makeRandomVector(int size, int minVal, int maxVal) {
  Vector vector;
  vector.size = size;
  vector.curPos = 0;
  vector.numElements = size;
  vector.values = malloc(size * sizeof(*vector.values));
  for (int i = 0; i < size; ++i) {
    vector.values[i] = minVal + rand() % (1 + maxVal - minVal);
  }

  return vector;
}

bool VectorsAreEqual(Vector vector1, Vector vector2) {
  if (vector1.size != vector2.size) {
    return false;
  } else {
    for (int i = 0; i < vector1.size; ++i) {
      if (vector1.values[i] != vector2.values[i]) {
        return false;
      }
    }
    return true;
  }
}

void setVector(Vector* vector, int* values, int size, int numElements, int curPos) {
  vector->values = values;
  vector->size = size;
  vector->numElements = numElements;
  vector->curPos = curPos;
}

void printVector(Vector vector) {
  for (int i = 0; i < vector.numElements; ++i) {
    printf("%d ", vector.values[i]);
  }
  printf("\n");
}

void destroyVector(Vector* vector) {
  if (vector->values) {
    free(vector->values);
  }
  vector->values = NULL;
  vector->numElements = 0;
  vector->size = 0;
  vector->curPos = 0;

}

Vector deepCopyVector(Vector vector) {
  Vector copy;
  copy.size = vector.size;
  copy.curPos = vector.curPos;
  copy.numElements = vector.numElements;
  copy.values = malloc(copy.size * sizeof(*copy.values));
  for (int i = 0; i < copy.numElements; ++i) {
    copy.values[i] = vector.values[i];
  }
  return copy;
}

Vector shallowCopyVector(Vector vector) {
  Vector copy;
  copy.size = vector.size;
  copy.curPos = vector.curPos;
  copy.numElements = vector.numElements;
  copy.values = vector.values;
  return copy;
}

bool vectorIsEmpty(Vector vector) {
  return vector.numElements == 0;
}

int peekCurValue(Vector vector) {
  return vector.values[vector.curPos];
}

int dequeVector(Vector* vector) {
  int curValue = peekCurValue(*vector);
  vector->curPos = (vector->curPos + 1) % vector->size;
  vector->numElements--;
  return curValue;
}

/**
 * Is vector1's current position is inside space belonging to vector2
 * @param vector1
 * @param vector2
 * @return
 */
bool isInside(Vector vector1, Vector vector2) {
  int* vector1Location = &vector1.values[vector1.curPos];
  return vector1Location >= &vector2.values[vector2.curPos] &&
      vector1Location < &vector2.values[vector2.size];
}
