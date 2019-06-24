
void rec_strcpy(char* dest, char* src){
	if(*src == '\0'){
		*dest = *src;
		return;
	} else{
		*dest = *src;
		rec_strcpy(dest + 1, src + 1);
	}

}
