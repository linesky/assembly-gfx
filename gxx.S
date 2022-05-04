.global mains 
mains:
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	#ldr r5,
	ldr r0,x
	ldr r1,y
	mov r2,#8
	blx	screens
	#ldr r5,box
	mov r0,#0
	mov r1,#0
	ldr r2,x
	ldr r3,y
	mov r4,#0
	blx	box
	#ldr r5,sleeps
	mov r0,#10
	blx	sleeps
	#ldr r5,scroff
	blx	scroff
	#ldr r5,exits
	mov r0,#0
	blx	exits
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
x: .word 300
y: .word 300
var_hello:    .asciz "hello world\0"

