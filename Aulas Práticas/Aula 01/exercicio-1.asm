.text

li      $s0,    1               # A

addi    $s1,    $zero,  1       # B
addi    $s2,    $zero,  1       # C
addi    $s3,    $zero,  1       # D
addi    $s4,    $zero,  1       # E
addi    $s5,    $zero,  1       # F

# a -> A = B - C
sub     $s0,    $s1,    $s2     # fim

# b -> B = A + C
add     $s1,    $s0,    $s2     # fim

# c-> D = (A + B - C)
add     $t0,    $s0,    $s1
sub     $s3,    $t0,    $s2     # fim

# d -> F = (A + B) - D
add     $t0,    $s0,    $s1
sub     $s5,    $t0,    $s3     # fim

# e -> C = A - (B + D)
add     $t0,    $s1,    $s3
sub     $s2,    $s0,    $t0     # fim

# f -> E = A - (B - C)
sub     $t0,    $s1,    $s2
sub     $s4,    $s0,    $t0     # fim

# g -> E = (A - (B - C) + F)
sub     $t0,    $s1,    $s2
sub     $t0,    $s0,    $t0
add     $s4,    $t0,    $s5     # fim

# h -> F = E - (A - B) + (B - C)
sub     $t0,    $s0,    $s1     # t0 = (A - B)
sub     $t1,    $s1,    $s2     # t1 = (B - C)
sub     $t2,    $s4,    $t0     # t2 = E - t0
add     $s5,    $t2,    $t1     # fim