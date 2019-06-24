#include <stdlib.h>
#include <ctype.h>
#include <stdio.h>
char* read_any_len_line();
char* read_any_len_str();

/**
 * Read a line of any length from standard input
 * @return a string entered from standard input
 */
char* read_any_len_line() {
  char* line = NULL;
  char cur_char;
  int num_args_read;
  int cur_size = 0;
  const int num_args_needed = 1;

  do {
    num_args_read = scanf("%c", &cur_char);
    cur_size++;  // one more character read
    // make space for that character in the array
    line = (char*) realloc(line, cur_size * sizeof(char));
    // put the character in
    line[cur_size - 1] = cur_char;
  } while (cur_char != '\n' && num_args_read == num_args_needed);
  // make sure to add the null character in
  line[cur_size - 1] = '\0';
  return line;
}

/**
 * Read a string of any length from standard input
 * @return the string read from standard input
 */
char* read_any_len_str() {
  char* str = NULL;
  int cur_size = 0;
  char cur_char;
  int num_args_read;
  const int num_args_needed = 1;

  scanf(" %c", &cur_char);

  do {
    cur_size++;  // one more character read
    // make space for that character in the array
    str = (char*) realloc(str, cur_size * sizeof(char));
    // put the character in
    str[cur_size - 1] = cur_char;
    num_args_read = scanf("%c", &cur_char);
  } while (!isspace(cur_char) && num_args_read == num_args_needed);
  // make sure to add the null character in
  cur_size++;  // one more character read
  // make space for that character in the array
  str = (char*) realloc(str, cur_size * sizeof(char));
  str[cur_size - 1] = '\0';
  return str;
}

#include <stdio.h>

int main() {
  char* str1;
  char* str2;
  printf("Enter a line: ");
  str1 = read_any_len_line();
  printf("You entered: %s\n", str1);

  printf("Enter a string: ");
  str2 = read_any_len_line();
  printf("You entered: %s\n", str2);

  free(str1);
  free(str2);
  return 0;
}