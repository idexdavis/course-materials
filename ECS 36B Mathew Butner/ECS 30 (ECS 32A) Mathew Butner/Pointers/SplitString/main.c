#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>

int count_whitespace(char* string);
char* read_word(char* string);
void append_char(char toAdd, char** array, int* len);
void append_str(char* toAdd, char*** array, int* len);
void print_strings(char** strings, int num_strings);
void free_strings(char*** strings, int num_strings);

int count_whitespace(char* string){
  int i;
  for (i = 0; isspace(string[i]) && string[i] != '\0'; ++i){}
  return i;
}

void append_char(char toAdd, char** array, int* len){
  //one more character
  (*len)++;
  //make space for the character
  *array = (char*) realloc(*array, *len * sizeof(char));
  //add character in
  (*array)[*len-1] = toAdd;
}

void append_str(char* toAdd, char*** array, int* len){
  //one more string
  (*len)++;
  //make space for the string
  *array = (char**) realloc(*array, *len * sizeof(char*));
  //add string in
  (*array)[*len-1] = toAdd;
}


char* read_word(char* string) {
  int i;
  char* word = NULL;
  int len = 0;
  //skip leading whitespace
  i = count_whitespace(string);

  //keep reading characters into our word until we find whitespace or
  // the end of the string
  for(; !isspace(string[i]) && string[i] != '\0'; ++i){
    append_char(string[i], &word, &len);
  }

  if(word != NULL){ //read at least one character
    append_char('\0', &word, &len);
  }
  return word;

}

void splitStrings(char* string, char*** out_words, int* out_num_words){
  *out_words = NULL;
  *out_num_words = 0;
  char* word= NULL;

  while( string[0] != '\0'){
    word = read_word(string);
    if(word == NULL){ //no more words
      break; //so stop trying to read them
    }
    append_str(word, out_words, out_num_words);
    string += count_whitespace(string) + strlen(word); //advance to next word
  }

}

void print_strings(char** strings, int num_strings){
  for (int i = 0; i < num_strings; ++i) {
    printf("%d. %s\n", i + 1, strings[i]);
  }
}

void free_strings(char*** strings, int num_strings){
  for (int i = 0; i < num_strings; ++i) {
    free((*strings)[i]);
  }
  free(*strings);
  *strings = NULL;
}


int main() {
  printf("Hello, World!\n");
  char** words;
  int num_words;
  char str[]= "Hello   beautiful      amazing       world  ";
  splitStrings(str, &words, &num_words);
  print_strings(words, num_words);
  free_strings(&words, num_words);

  return 0;
}