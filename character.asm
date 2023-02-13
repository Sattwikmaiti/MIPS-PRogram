.data 
   mychar: .byte 'c'
   
.text 
   li $v0,4
   la $a0,mychar
   syscall   