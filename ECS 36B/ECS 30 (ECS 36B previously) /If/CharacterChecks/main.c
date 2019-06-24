#include <stdbool.h>

bool my_islower(const char c){
  return 'a' <= c && c <= 'z';
}

bool my_isupper(const char c){
  return 'A' <= c && c <= 'Z';
}

bool my_isalpha(const char c){
  return my_islower(c) || my_isupper(c);
}

bool my_isdigit(const char c){
  return '0' <= c && c <= '9';
}

bool my_isalnum(const char c){
  return my_isalpha(c) || my_isdigit(c);
}

char my_tolower(const char c){
  if(my_isupper(c)){
    return 'a' + (c - 'A'); //lower case alphabet starts at 'a'
    // c - 'A' is how far past 'A' the letter is
  }else{
    return c;
  }
}

char my_toupper(const char c){
  if(my_islower(c)){
    return 'A' + (c - 'a'); //lower case alphabet starts at 'a'
    // c - 'A' is how far past 'A' the letter is
  }else{
    return c;
  }
}