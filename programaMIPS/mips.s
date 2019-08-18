	     .data 

mensagem:    .asciiz "Digite um numero\n" #asciiz para variaveis do tipo string no formato ASCII
numero:      .word 1 #word para variaveis do tipo inteiro
sucessor:    .word 1

	     .text #parte do programa onde sera executado
	     #imprime mensagem
main:	     li $v0, 4
             la $a0, mensagem
             syscall
	    
	     #lê inteiro
	     li $v0, 5
	     syscall

 	     #grava numero na memoria
	     sw $v0, numero
 
	     #calcula sucessor
	     addi $t0, $v0, 1

	     #grava sucessor
	     sw $t0, sucessor

	     #imprime inteiro
	     li $v0, 1
	     move $a0, $t0
 	     syscall 
		
	     jr $ra
