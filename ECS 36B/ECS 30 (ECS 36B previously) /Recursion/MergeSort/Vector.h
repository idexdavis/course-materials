//
// Created by mfbut on 8/13/2018.
//

#ifndef MERGESORT_VECTOR_H
#define MERGESORT_VECTOR_H
#include <stdbool.h>
typedef struct VectorStruct{
  int* values;
  int size;
  int numElements;
  int curPos;
} Vector;

Vector makeRandomVector(int size, int minVal, int maxVal);
bool VectorsAreEqual(Vector vector1, Vector vector2);
void setVector(Vector* vector, int* values, int size, int numElements, int curPos);
void printVector(Vector vector);
void destroyVector(Vector* vector);
Vector deepCopyVector(Vector vector);
Vector shallowCopyVector(Vector vector);
bool vectorIsEmpty(Vector vector);
int peekCurValue(Vector vector);
int dequeVector(Vector* vector);
bool isInside(Vector vector1, Vector vector2);


#endif //MERGESORT_VECTOR_H
