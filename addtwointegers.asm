
.data 
   n1: .word 1
   n2: .word 2
.text 
   lw $t1,n1
   lw $t2,n2
   add $t3,$t1,$t2
   
   move $a0,$t3
   li $v0,1
   syscall