#Calculator
.data 
    prompt1 : .asciiz "Enter the first Number:\n"
    prompt2 : .asciiz "Enter the second Number:\n"
    addition: .asciiz "The sum is :\n"
    newline: .asciiz "\n"
    subs: .asciiz "The substtaction is: \n"
    multiply: .asciiz "The multiply is :\n"
    division: .asciiz "The diviosn is: \n"
    
.text 
#enter the first numebr 
   li $v0,4
   la $a0,prompt1
   syscall
   
   #enter input1 from user
  li $v0,5
  syscall
  move $t0,$v0
   
  #enter 2nd numebr 
   li $v0,4
   la $a0,prompt2
   syscall
   # take input
   li $v0,5
   
   syscall
   
   move $t1,$v0
   #addtion done 
   li $v0,4
   la $a0,addition
   syscall
   add $a0,$t1,$t0
   
   #display
   li $v0,1
   
   syscall
   #give newline 
  li $v0,4
   la $a0,newline
   syscall
   #substraction
   li $v0,4
   la $a0,subs
   syscall
   sub $a0,$t1,$t0
   
   #result 
   li $v0,1
   
   syscall
   #newline 
  li $v0,4
   la $a0,newline
   syscall
 #multiply 
 
 li $v0,4
 la $a0,multiply
 syscall 
 #result 
 mul $a0,$t0,$t1
 li $v0,1
 syscall
 
   li $v0,4
   la $a0,newline
   syscall
 #division
 
 
addi $t0,$zero,15
addi $t1,$zero,2


div $t0,$t1

mflo $s0 #quotuent
mfhi $s1 #reminder

move $a0,$s0
li $v0,1
syscall

