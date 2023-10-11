.data
    msg: .asciiz "\n"

.text
    main:
    li $v0, 5 #ccarrega
    syscall
    move $t1, $v0 #move
    li $v0, 5 #carrega
    syscall
    move $t2, $v0 #move
   
    sub $t0, $t1, $t2
    move $a0, $t0
    li $v0, 1 
    
    syscall
    
    la $a0, msg
    li $v0, 4
    syscall
    
    li $v0, 10
    syscall


    

