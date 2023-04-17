#include <stdio.h>

int pHash_function(char*);
int hash_get(int*, char*);
void hash_set(int*, char*, int);

// Creating a hash function for a fake "language"
  //List of keywords
  char* keywords[6] = {
    "if",
    "else",
    "switch",
    "next",
    "case",
    "for"
  };

int main(int argc, char *argv[])
{
  int table[10] = {};

  for (int i = 0; i < 6; i++) {
    printf("%d ", hash_get(table, keywords[i]));
  }
    printf("\n");
  for (int i = 0; i < 6; i++) {
    hash_set(table, keywords[i], i * 2); 
  }
  for (int i = 0; i < 6; i++) {
    printf("%d ", hash_get(table, keywords[i]));
  }
    printf("\n");

  return 0;
}

void hash_set(int* arr, char* key, int data) {
  arr[pHash_function(key)] = data;
}
int hash_get(int* arr, char* key) {
  return arr[pHash_function(key)];
}

int pHash_function(char* key) {
  return (key[0] + key[1]) % 10;
}
