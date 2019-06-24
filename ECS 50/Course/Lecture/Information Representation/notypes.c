#include <stdio.h>

//Remember there are no types at the machine level
//Bits only have the meaning that you give to them!
int main(){
	//values to try 0x00544143
	unsigned int data;
	printf("Enter a hex number 0x");
	scanf("%x", &data);

	printf("0x%x interpreted as hex is 0x%x\n", data, data);
	printf("0x%x interpreted as an unsigned integer is %u.\n", data, data);
	printf("0x%x interpreted as a signed integer with 2's Compliment representation is %d.\n", data, data);
	printf("0x%x interpreted as a floating point number is %f.\n", data, *((float*)&data));
	printf("The most signicant byte of %x interpreted as a character is %c.\n", data, data);
	if(((char*)&data)[3] == '\0'){
		printf("0x%x interepreted as a string is %s.\n", data, (char*)&data);
	} else{
		printf("It is unsafe to interpret 0x%x as a string because it is not null terminated.\n", data);
	}
	return 0;
}
