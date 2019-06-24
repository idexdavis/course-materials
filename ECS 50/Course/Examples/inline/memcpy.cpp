/*
	void mem_cpy(char* src, char* dest, int num_bytes){
		for(int i = 0; i < num_bytes; ++i)
			dest[i] = src[i];
	}

*/

void my_mem_cpy(char* src,char* dest, int num_bytes){

	__asm__(
	"rep movsb"
	:
		//output
	:
	//input
	"S"(src), "D"(dest), "c" (num_bytes)
	:
	"cc", "memory"
	//clober
	);
}

void my_memset(char* ptr, unsigned char value, int num_bytes){

	__asm__(
	"rep stosb"
	:
	//output
	:
	//input
	"D"(ptr), "a" (value), "c"(num_bytes):
	"cc", "memory"
	);
}


int index(int* ar, int size, int val){

	int pos;
	__asm__(
	//code
	"std;"
	"movl $-1, %%ebx;"
	"repne scasl;"
	"jecxz no_find;"
	"movl %%ecx, %%ebx"
	"no_find:"
	:
	//outputs
	"b" (pos)
	:
	//inputs
	"c" (size), "a" (val), "D" (ar + size - 1)
	:
	//clobber
	"cc"
	);

	if(pos == -1){
		return -1;
	}
	else{
		return pos;
	}

}

