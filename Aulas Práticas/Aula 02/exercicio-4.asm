.data

a: .word 0 10 20 30 40 50 60 70 80 90 100

.text

    li      $s0,    0               # i
    li      $s1,    11              # n
    li      $t0,    4               # bytes per word

    la      $s3,    a               # endereco de memoria da primeira posicao do vetor a

L1:
    mul     $t1,    $s0,    $t0     # $t1 = i * 4
    add     $t2,    $s3,    $t1     # $t2 = a + i * 4

    lw      $t4,    ($t2)           # $t4 = a[i]
    addi    $t4,    $t4,    50      # $t4 = a[i] + 50

    sw      $t4,    ($t2)           # a[i] = a[i] + 50
    addi    $s0,    $s0,    1       # i++

    blt     $s0,    $s1,    L1      # enquanto i < n
