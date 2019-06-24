#include <iostream>

static const int len = 4;

void copy_array(int* src, int* dest, const int len){
    /*
     *
    for (int i = 0; i < len; ++i) {
        dest[i] = src[i];
    }*/

    __asm__(
            //code
            "movl $0, %%ecx;" //ecx is i
            "copy_array_for_start:;"
            /*
             * i < len
             * i - len < 0
             * neg: i - len >= 0
             */
            "cmpl %[len], %%ecx;"
            "jge copy_array_for_end;"
            "movl (%[src], %%ecx, 4),%%eax;"
            "movl %%eax, (%[dest], %%ecx, 4);"
            "incl %%ecx;"
            "jmp copy_array_for_start;"
            "copy_array_for_end:;"

            :
            //outputs
            :
            //inputs
            [src] "r" (src), 
            [dest] "r" (dest), 
            [len] "r" (len)
            :
            //clobbered
            "cc", "%ecx", "%eax", "memory"
            );
    
}

void print_array(int* ar, const int len){
    for (int i = 0; i < len; ++i) {
        printf("%d ", ar[i]);
    }
    printf("\n");
}


int main() {
    int ar1[] = {14, 25, 36, 9};
    int ar2[len];
    copy_array(ar1, ar2, len);
    print_array(ar1, len);
    print_array(ar2, len);
    return 0;
}