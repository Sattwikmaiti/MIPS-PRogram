# 1 => 2^1 =2  2 =>2^2=4
.data 
.text
  addi $t0,$zero,10
 # multiply a number by 2^2
 sll $a0,$t0,2
 #divide the integral quotient by 2^2
 srl $a0,$t0,2
 
li $v0,1
syscall