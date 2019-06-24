
int rec_strlen(char* str){

	if(*str == '\0'){
		return 0;
	}
	else{
		return 1 + rec_strlen(str + 1);
	}


}
