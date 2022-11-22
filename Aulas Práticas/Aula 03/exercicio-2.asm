.text
    li      $s0,    13              # joao
    li      $s1,    30              # jose
    li      $s2,    0               # dias
    li      $s3,    10

    slt     $t0,    $s0,    $s1     # verificando se joao < josse, se for $t0 = 1
    beq     $t0,    0,      exit    # se Joao > Jose finaliza


L1:
    add     $s0,    $s0,    3       # adicionando 3 para Joao
    add     $s1,    $s1,    1       # adicionando 1 para Jose
    slt     $t1,    $s2,    $s3     # verifica se dia < 10, se for $t1=1
    beq     $t1,    1,      if      # se dia < 10, vai para o if
    j       exit                    # se dia > 10 finaliza


if: add $s2, $s2, 1                 # dia++
    slt     $t0,    $s0,    $s1     # faz novamente a verificacao para saber se joao < jose, se for $t0=1
    bne     $t0,    0,      L1      # verificando se $t0 e diferente de 0, se for vai para L1


exit:                               # finalizando