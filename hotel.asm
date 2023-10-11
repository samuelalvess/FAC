.data   
    msg: .asciiz "\n"

.text   
    main:
    li $v0, 5
    syscall
    move $t0, $v0

    li $v0, 5
    syscall
    move $t1, $v0
    
    li $v0, 5
    syscall
    move $t2, $v0

    li $t3, 32
    li $t8, 1

    sub $t3, $t3, $t2 #$t3 - constante da qntd de diarias

    sub $t4, $t2, $t8 # n-1
    mul $t5, $t4, $t1 # D + (N-1) 
    add $t6, $t5, $t0 # D + (N-1) * A
    

    mul $t7, $t6, $t3 
    move $a0, $t7
    li $v0, 1
    syscall

    la $a0, msg
    li $v0, 4
    syscall

    li $v0, 10
    syscall

    






    

    

    