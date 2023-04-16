#include <stdio.h>
#include <stdlib.h>
#define ARRAY_SIZE 100

void printArray( int*, int);
void quicksort(int*, int, int);
void swap(int*, int*);
int partition(int*, int, int);

int main(int argc, char *argv[])
{
  int arr[ARRAY_SIZE] = {};
  for(int i = 0; i < ARRAY_SIZE; i++) { 
    arr[i] = rand() % 100;
  }
  printArray(arr, ARRAY_SIZE);
  quicksort(arr, 0, ARRAY_SIZE);
  printArray(arr, ARRAY_SIZE);
  return 0;
}

void quicksort(int* arr, int low, int high){
  if(low < high) {
    int split = partition(arr, low, high);
    quicksort(arr, low, split);
    quicksort(arr, split + 1, high);
  }
  return ;
}

int partition(int*arr, int low, int high){
  int pivot = arr[high - 1];
  for(int i = low; i < high; i++) {
    if(arr[i] < pivot) swap(&arr[low++], &arr[i]);
  }
  swap(&arr[low], &arr[high - 1]);
  return low;
}

void swap(int* A, int* B) {
  int T = *A;
  *A = *B;
  *B = T;
  return;
}

void printArray(int* arr, int size) {
  printf("\n ");
  for (int i = 0; i < size; i++) {
    printf(" %d ", arr[i]); 
  }
  printf("\n");
  return;
}
