#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>
#include "Vector.h"

void swap(int* a, int* b);
void MergeSort(Vector* vector);
void Merge(Vector* left, Vector* right);
//void altMerge(int* left, int leftSize, int* right, int rightSize);
void AltMerge(Vector* left, Vector* right);
void patchSort(Vector* vector);
void randomTesting();

void swap(int* a, int* b) {
  int temp = *a;
  *a = *b;
  *b = temp;
}

void MergeSort(Vector* vector) {
  if (vector->numElements <= 1) {
    return;
  } else {
    Vector left, right;
    int leftSize = vector->size / 2;
    int rightSize = vector->size - leftSize;
    setVector(&left, vector->values, leftSize, leftSize, 0);
    setVector(&right, vector->values + leftSize, rightSize, rightSize, 0);

    MergeSort(&left); //sort the left
    MergeSort(&right); //sort the right
    Merge(&left, &right); //merge the results together
  }
}

/**
 * Do the merge part of merge sort.
 * left and right should be a part of the same array with left being
 * the left hand side of the array and right the right.
 * Both left and right should already be sorted
 * @param left
 * @param leftSize
 * @param right
 * @param rightSize
 */
void Merge(Vector* left, Vector* right) {

  for (int leftIndex = 0; leftIndex < left->numElements; leftIndex++) {
    if (right->values[0] < left->values[leftIndex]) { //minimum value on the right
      //move it to the left
      swap(&left[leftIndex], &right[0]);
      patchSort(right); //put the item from the left into the right part of the array
    }
  }

}

void patchSort(Vector* vector) {
  for (int i = 0; i < vector->numElements - 1; ++i) {
    if (vector->values[i] > vector->values[i + 1]) {
      swap(vector->values + i, vector->values + i + 1);
    } else {
      break;
    }
  }
}

void MergeSortAlt(Vector* vector) {
  if (vector->numElements <= 1) {
    return;
  } else {
    Vector left, right;
    int leftSize = vector->size / 2;
    int rightSize = vector->size - leftSize;
    setVector(&left, vector->values, leftSize, leftSize, 0);
    setVector(&right, vector->values + leftSize, rightSize, rightSize, 0);

    MergeSortAlt(&left); //sort the left
    MergeSortAlt(&right); //sort the right
    AltMerge(&left, &right); //merge the results together
  }
}

int* makeRandomArray(int numElements, int minVal, int maxVal) {
  int* ar = malloc(numElements * sizeof(*ar));
  for (int i = 0; i < numElements; ++i) {
    ar[i] = minVal + rand() % (maxVal - minVal + 1);
  }
  return ar;
}

void printAr(int* ar, int len) {
  for (int i = 0; i < len; ++i) {
    printf("%d ", ar[i]);
  }
  printf("\n");
}

/*void altMerge(int* left, int leftSize, int* right, int rightSize) {
  int* ar = left;
  int leftIndex = 0, rightIndex = 0;\
  int totalSize = leftSize + rightSize;

  for (int insertIndex = 0; insertIndex < totalSize; ++insertIndex) {
    if (left[leftIndex] <= right[rightIndex] && leftIndex < leftSize) {
      swap(&ar[insertIndex], &left[leftIndex]);
      leftIndex = (leftIndex + 1) % leftSize;
      if (ar + insertIndex == left) {
        left += 1;
        leftSize--;
        leftIndex = 0;
      }
    } else if (rightIndex < rightSize) {
      swap(&ar[insertIndex], &right[rightIndex]);

      if (leftIndex < leftSize) {
        if (left == ar + insertIndex) {//this is the first time right is smaller
          //we need to rebase left
          left = right + rightIndex;
          leftSize = 1;
          leftIndex = 0;
        } else {
          leftSize++;
        }
      }
      rightIndex++;
    }
  }

}*/

/*
void altMerge(int* left, int leftSize, int* right, int rightSize) {
  int* ar = left;
  int leftIndex = 0, rightIndex = 0;
  int totalSize = leftSize + rightSize;

  for (int insertIndex = 0; insertIndex < totalSize; ++insertIndex) {
    bool leftEmpty = leftIndex >= leftSize;
    bool rightEmpty = rightIndex >= rightSize;

    if (!leftEmpty && left[leftIndex] <= right[rightIndex]) {
      swap(&ar[insertIndex], &left[leftIndex]);
      if (ar + insertIndex == left + leftIndex) {
        left++;
        leftSize--;
      } else {
        leftIndex = (leftIndex + 1) % leftSize; //left behaves like a circular array
      }
    } else if (!rightEmpty) {
      swap(&ar[insertIndex], &right[rightIndex]);
      if (!leftEmpty) {
        if (ar + insertIndex == left && ar + insertIndex < left + leftIndex) {
          //if the insertion position is inside the physical portion of left
          //but before the logical front of circular array
          //then we need to shift what we consider the array
          //one to the right
          left++;
          leftIndex--;
        } else if (ar + insertIndex >= left + leftIndex) {
          //if //we've swapped into a portion of the left array
          //left array needs to move
          //and the right array has created space for where it should be at
          //so move left there
          left = right + rightIndex;
          leftSize = 1;
          leftIndex = 0;
        } else {
          //we've just added one element to the left array
          leftSize++;
        }
      }
      rightIndex++;

    }

  }

}
 */

void AltMerge(Vector* left, Vector* right) {
  //after merging the left half of the the array
  //there will be 4 separate vectors inside of the right half of the array
  const int numMiniVectors = 4;
  const int lastMiniVectorPos = numMiniVectors - 1;
  Vector miniVectors[numMiniVectors];
  for (int i = 0; i < numMiniVectors; ++i) {
    setVector(&miniVectors[i], NULL, 0, 0, 0);
  }

  miniVectors[0] = *left;
  miniVectors[lastMiniVectorPos] = *right;

  //get the left half of the vector sorted
  for (int insertPos = 0; insertPos < left->numElements; ++insertPos) {
    if (vectorIsEmpty(miniVectors[0])) {
      return;
    } else if (vectorIsEmpty(miniVectors[lastMiniVectorPos])) {
      swap(&left->values[insertPos], &miniVectors[0].values[miniVectors->curPos]);
      dequeVector(&miniVectors[0]);
    } else if (peekCurValue(miniVectors[0]) < peekCurValue(miniVectors[lastMiniVectorPos])) {
      //left before right
      swap(&left->values[insertPos], &miniVectors[0].values[miniVectors[0].curPos]);
      dequeVector(&miniVectors[0]);
    } else { //right before left
      swap(&left->values[insertPos], &miniVectors[lastMiniVectorPos].values[miniVectors[lastMiniVectorPos].curPos]);
      dequeVector(&miniVectors[lastMiniVectorPos]);
      //if we are top of the "left" mini vector
      if (&left->values[insertPos] == &miniVectors[0].values[miniVectors[0].curPos]) {
        //we need to move the left mini vector into the right half of the main array
        setVector(&miniVectors[0], right->values, 1, 1, 0);
      } else if(){

      }
    }
  }

}

void randomTesting() {
  srand(3);
  int len = 16;
  Vector v1, v2;
  v1 = makeRandomVector(len, 0, 100);
  v2 = deepCopyVector(v1);

  printf("Original Array\n");
  printVector(v1);

  MergeSort(&v1);
  MergeSortAlt(&v2);

  if (!VectorsAreEqual(v1, v2)) {
    printVector(v1);
    printVector(v2);
  } else {
    printf("Sort Successful\n");
  }

  destroyVector(&v1);
  destroyVector(&v2);

}

int main() {
  randomTesting();
//  int ar[] = {2, 21, 32, 39, 49, 100, 3, 19, 49, 54, 62, 80};
//  int size = 12;
//  printAr(ar, size);
//  altMerge(ar, 6, ar + 6, 6);
//  printAr(ar, size);
  return 0;
}

