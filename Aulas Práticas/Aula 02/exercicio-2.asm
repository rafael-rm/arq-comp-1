.data

a: .word 0 10 20 30 40 50 60 70 80 90 100

.text

    la      $s3,    a                   # Pegar endereco da primeira posicao do vetor "a"
    li      $s2,    50                  # h = 50

    lw      $t0,    32($s3)             # $t0 = a[8]
    add     $t1,    $s2,        $t0     # $t1 = h + a[8]
    sw      $t1,    36($s3)             # a[9] = $t1