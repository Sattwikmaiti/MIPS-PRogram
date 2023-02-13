.data 
  mydob: .double 6.77
  myzero: .double 4.0
.text 
 
  
  ldc1 $f2,mydob
  ldc1 $f0,myzero
  li $v0,3
  add.d $f12,$f2,$f0
  syscall