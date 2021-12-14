#int main(){
#   int c[20] = {12, 0, 1, 2, 3, 2, 8, 10, 13, 27, 18, -10, 9, 15, -66, 0, 66, 99, 77, 88};
#    int a = 0, b = 30;
#    a = b + c[10];
#    if(a == b) c[10] = a; 
#    else c[10] = b;
#    for(int i = 0; i < 10; i++){
#         b = b - i;
#         c[i] = b;
#   }
#}
# declaração de vetor
.data
c: .word 12, 0, 1, 2, 3, 2, 8, 10, 13, 27, 18, -10, 9, 15, -66, 0, 66, 99, 77, 88
.text
   	#la $s1,a
	#la $s2,b
	la $s0,c
	addi $s1, $zero, 0
	addi $s2, $zero, 30

	lw $t0, 40($s0)

	add $t2, $s2, $t1
	add $s1, $zero, $t2
	addi $t4, $zero, 40
	add $t5, $t4, $s0
	beq $s1, $s2, if
	j else
if:
    sw $s1, 0($t5)
    j felse
else:
    sw $s2, 0($t5)
felse:
    addi $s3, $zero, 0
    addi $s5, $zero, 0
loop:
    sub $s2, $s2, $s5
    add $t6, $s3, $s0
    sw $s2, 0($t6)
    addi $s5, $s5, 1
    addi $s3, $s3, 4
    bne $s3, $s4, loop







