//
// Created by mfbut on 7/25/2018.
//

#ifndef CIRCULARARRAY_CIRCULARARRAY_H
#define CIRCULARARRAY_CIRCULARARRAY_H

typedef struct CircularArray_Struct{
  int* values;
  int curPos;
  int maxSize;
  int curSize;
}CircularArray;

void addElement( int value, CircularArray* circleArray);
int getNextElement(CircularArray* circleArray);

#endif //CIRCULARARRAY_CIRCULARARRAY_H
