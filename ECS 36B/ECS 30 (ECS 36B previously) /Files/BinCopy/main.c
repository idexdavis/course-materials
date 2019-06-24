#include <stdio.h>
#include <stdlib.h>

FILE* safeOpen(const char* fileName, const char* mode);

FILE* safeOpen(const char* fileName, const char* mode) {
  FILE* theFile = fopen(fileName, mode);
  if(theFile == NULL){
    printf("Failed to open %s\n", fileName);
  }
  return theFile;
}


void bincpy(char* srcFile, char* destFile) {
  FILE* src = NULL;
  FILE* dest = NULL;
  char c;

  src = safeOpen(srcFile, "rb");
  if(src == NULL){
    return;
  }
  dest = safeOpen(destFile, "wb");
  if(dest == NULL){
    fclose(src);
    return;
  }

  fread(&c, sizeof(char), 1, src);
  while(!feof(src)){
    fwrite(&c, sizeof(char), 1, dest);
    fread(&c, sizeof(char), 1, src);
  }


  fclose(src);
  fclose(dest);
}



int main(int argc, char** argv) {
  bincpy(argv[1], argv[2]);
  return 0;
}