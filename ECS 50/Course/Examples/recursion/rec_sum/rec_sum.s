.global rec_sum
.equ ws, 4

/*
    int rec_sum(int* nums, int len){
        if(len == 0){
          return 0;
        } else{
            return nums[0] + rec_sum(nums + 1, len -1);
        }
    }
*/

rec_sum:
    prolgue:
        push %ebp
        movl %esp, %ebp

        #len
        #nums
        #ret addr
        #ebp -> old ebp

        .equ num,2*ws #(%ebp)
        .equ len, 3*ws #(%ebp)

        if:
            cmpl $0, len(%ebp)
            jnz else
            movl $0, %eax
            jmp epilogue

        else:
            #return nums[0] + rec_sum(nums + 1, len -1);
            movl len(%ebp), %eax
            decl %eax #eax = len - 1
            push %eax
            movl nums(%ebp), %eax # eax = nums
            leal 1*ws(%eax), %eax
            push %eax
            call rec_sum
            addl $2*ws, %esp # clear args
            movl nums(%ebp), %ecx #ecx = nums
            addl (%ecx), %eax # eax the return value

        epilogue:
          movl %ebp, %esp
          pop %ebp
          ret