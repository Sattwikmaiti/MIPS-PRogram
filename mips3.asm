.data 
   age: .float 3.45
   
.text 
   li $v0,2
   lwc1 $f12,age
   syscall