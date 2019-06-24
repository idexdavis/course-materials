.global my_mem_cpy
.equ wordsize, 4


my_mem_cpy: #void* my_mem_cpy(void* dest, void* src, int size)
  #on function call
  #esp + 12: size
  #esp + 8: src
  #esp + 4: dest
  #esp: ret
  #ebp esp: ebp
  #prologue
  push %ebp
  movl %esp, %ebp
  
  .equ dest, (2*wordsize) #(%ebp)
  .equ src, (3*wordsize) #(%ebp)
  .equ size, (4*wordsize) #(%ebp)
  
  #for(i = 0; i < size; i++)
  # dest[i] = src[i]
  
  #eax will be dest
  #ecx will be i
  #edx will be src[i]
  #ebx to be size
  #esi will be src
  
  push %ebx #save the old value of ebx
  push %esi #save the old value of esi
  
  #grab args
  movl dest(%ebp), %eax
  movl src(%ebp), %esi
  movl size(%ebp), %ebx
  
  movl $0, %ecx #init i
  
  mem_cpy_for:
    cmpl %ebx, %ecx
    jge end_mem_cpy_for
    
    # dest[i] = src[i]
    movb (%esi, %ecx), %dl #dl = src[i]
    movb %dl, (%eax, %ecx)
    
    incl %ecx #i++
    jmp mem_cpy_for
  end_mem_cpy_for:
  
  #epilogue
  pop %esi #restore esi
  pop %ebx #restore ebx
  movl %ebp, %esp
  pop %ebp
  ret

