.text
    li      $s0,        3       # x
    li      $s1,        0       # y

    beq     $s0,        1,  L1  # verificando se x == 1
    j       case                # se nao for vai para o prox case


L1: add $s1, $s1, 5             # se for coloca y = 5
    j       exit                # finaliza


case:
    beq     $s0,        2,  L2  # verificando se x == 2
    j       default             # se nao for vai para o default


L2: add $s1, $s1, 10            # se for coloca y = 10
    j       exit                # finaliza


default: addi $s1, $zero, -1    # se x for diferente de 1 e 2, y = -1


exit: