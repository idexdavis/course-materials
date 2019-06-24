

int rec_str_cmp(char* str1, char* str2){

	if(*str1 == '\0' || *str2 == '\0'){
		return *str1 - *str2;
	}
	else if(*str1 != *str2){
		return *str1 - *str2;
	}
	else{
		return rec_str_cmp(str1 + 1, str2 +1);
	}

}
