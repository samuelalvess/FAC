.data   
    msg: .asciiz "Ola Mundo\n" #define a string
.text
    main:

la $a0, msg #carregando endereco da string em $a0
li $v0, 4 #chama a funcao para imprimir a string
syscall 

li $v0, 10
syscall