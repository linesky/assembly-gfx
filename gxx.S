.global mains 
mains:
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	mov r0,#0
	blx	colors
	ldr r0,x
	ldr r1,y
	mov r2,#8
	blx	screens
	mov r0,#0
	mov r1,#0
	ldr r2,x
	ldr r3,y
	blx	box
	mov r0,#10
	blx	sleeps
	#ldr r5,scroff
	blx	scroff
	mov r0,#0
	blx	exits
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
x: .word 300
y: .word 300
var_hello:    .asciz "hello world\0"

