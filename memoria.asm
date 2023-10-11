li $v0, 5
syscall
move $t0, $v0

li $v0, 5
syscall
move $t1, $v0


li $v0, 5
syscall
move $t2, $v0

sll $t3, $t1, 2     # multiplica j por 4 para obter offset em bytes
add $t1, $s0, $t3   # adcionei A + j
lw $t4, 0($t1)      # carrega o endereco base de A em $t4 - A[J]
add $t5, $t4, $t2   # soma A[j] + N

sll $t6, $t0, 2     # multipliquei i por 4 para obter o offser em bytes
add $t0, $s0, $t6   # adcionei A + i
lw $t7, 0($t0)
sw $t5, 0($t7)      #armazena de volta o resultado em A[i]






 