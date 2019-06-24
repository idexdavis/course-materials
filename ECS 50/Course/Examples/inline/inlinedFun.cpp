
#include <stdio.h>

void * memset ( void * ptr, int value, size_t num );
int min(int a, int b);
int strcmp(char* str1, char* str2);

void * memset ( void *ptr, int value, size_t num ){

	__asm__(
	"cld;" //clear direction
	"rep stosb" : //use the stosb instruction
	: //no outputs
	"D" (ptr), "a" (value), "c" (num) :
	"cc", "memory"); //memory and eflags will be changed
	
	return ptr;
}




void my_mem_copy(char* src, char* dest, int size){
	/*for(int i = 0; i < size; i++)
		dest[i] = src[i];
	*/
	
	__asm__(
	"movl $0, %%ecx;"
	"mem_cpy_loop:;"
	"cmpl %[size], %%ecx;"
	"jge end_mem_cpy_loop;"
	"movb (%[src], %%ecx), %%bl;"
	"movb  %%bl, (%[dest], %%ecx);"
	"incl %%ecx;"
	"jmp mem_cpy_loop;"
	"end_mem_cpy_loop:"
	//code
	:
	//outputs
	:
	//inputs
	[src] "r" (src) , [dest] "r" (dest), [size] "r" (size) 
	:
	//clobber
	"cc", "memory", "%ecx", "%ebx"
	);

}

void my_mem_copy2(char* src, char* dest, int size){
	__asm__(
		"rep movsb" :
		:
		"D" (dest), "S", (src), "c" (size)
		:
		"memory", "cc"
	);

}

int contains(int val, int* elements, int size){
	int index;

	__asm__(
		//code
		"movl %[size], %%ecx;"
		"repne scasl;"
		"jecxz not_found;"
		"movl %[size], %[index];"
		"subl %%ecx, %[index];"
		"jmp done_find;"
		
		
		"not_found:;"
		"movl $-1, %[index];"
		"done_find:"
		 : 
		//outputs
		: 
		[index] "=r" (index)
		//inputs
		"D" (elements), "a" (val), [size] "m" (size)
		: 
		//clobber
		"cc", "%ecx"
	);

}


int min(int a, int b){
	__asm__(
	"cmpl %[a], %[b];"
	"jg a_smaller;"
	"movl %[b], %[a];"
	"a_smaller:" :
	[a] "+a" (a) :
	[b] "r" (b):
	"cc"
	);
	return a;
}

int strcmp(char* str1, char* str2){
	int result;
	/*
	while(true){
		if(*str1 < *str2)
			return -1;
		else if(*str1 > *str2)
			return 1;
		else if(*str1 == 0) //we know that they are equal so if one is equal to null they both are and must be equal
			return 0;
		str1++;
		str2++;
	}
	*/
	//this assembly code implements the above C code
	__asm__(
	"cld;"
	"start_cmp:;"
		"cmpsb;"
		"jl str1_first;"
		"jg str2_first;"
		"cmpb $0, -1(%[str2]);"
		"jz equal;"
		"jmp start_cmp;"
		"str1_first:;"
			"movl $-1, %[result];"
			"jmp done_cmp;"
		"str2_first:;"
			"movl $1, %[result];"
			"jmp done_cmp;"
		"equal:"
			"movl $0, %[result];"
		"done_cmp:":
		
	[result] "=a" (result) :
	[str1] "S" (str1) , [str2] "D" (str2) :
	"%ecx", "cc"
	);
	
	return result;

}


int main(){
	char hello[] = "hello";
	char helloworld[] = "hello world";
	char bob[] = "bob";
	char dest[] = {0,0,0,0,0,0};
	memset(dest, 'a', 5);

	printf("%s\n", dest);
	printf("%d\n", min(10, 12));
	printf("%d\n", min(100,12));
	printf("%d\n", strcmp(hello, hello));
	printf("%d\n", strcmp(hello, bob));
	printf("%d\n", strcmp(bob, hello));
	printf("%d\n", strcmp(hello, helloworld));
	printf("%d\n", strcmp(helloworld, hello));
	return 0;
}
