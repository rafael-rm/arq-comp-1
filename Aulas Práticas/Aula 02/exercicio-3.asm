.data

a: .word 0 10 20 30 40 50 60 70 80 90 100

.text 

li $s1, 0 # g
li $s2, 50 # h
li $s4, 2 # i

la $s3, a # endereco de memoria da primeira posição do vetor a

 mul  $t1, $s4, 4 # i * 4
 
 add $t3, $s3, $t1 # endereco de memoria da posição i do vetor a
 
 lw $t2, ($t3) # carrega o valor da posição i do vetor a
 
 add $t4, $t2, $s2 # soma o valor da posição i do vetor a com o valor de s2
 
 add $s1, $zero, $t4 # copia o valor de t4 para s1