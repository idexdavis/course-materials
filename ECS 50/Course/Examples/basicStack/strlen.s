.global my_strlen

.equ wordsize, 4


my_strlen: #int strlen(char* str)
  #on call the stack looks like
  #esp + 4: str
  #esp: ret
  
  #for(i = 0; str[i] != '\0', i++);
  #return i
  
  #eax will be i
  #ecx will be str
  
  movl $0, %eax
  movl wordsize(%esp), %ecx #grab the argument
  
  strlen_for:
    cmpb $0, (%ecx, %eax)
    jz end_strlen_for
    incl %eax
    jmp strlen_for
  end_strlen_for:
  ret 
  
my_stlen_2:
  #on call the stack looks like
  #esp + 4: str
  #esp: ret
  
  #int i;
  #for(i = 0; str[i] != '\0', i++);
  #return i
  
  #eax will be i
  #ecx will be str
  
  #prologe
  push %ebp
  movl %esp, %ebp
  
  
  subl $wordsize, %esp #make space for i
  #stack
  #esp + 12: str
  #esp + 8: ret
  #ebp = esp + 4: old ebp
  #esp: i
  
  .equ str, 2*wordsize #(%ebp)
  .equ i, -1*wordsize #(%ebp)
  
  movl $0, %eax
  movl %eax, i(%ebp)
  movl str(%ebp), %ecx #grab the argument
  
  
  strlen_for:
    cmpb $0, (%ecx, %eax)
    jz end_strlen_for
    incl %eax
    jmp strlen_for
  end_strlen_for:
  #prologue
  movl %ebp, %esp
  pop %ebp 
  ret 
  
  
