	section .text
	global bulle
bulle:
	push rbp
	mov r8,rsi
boucle:
	mov r9,0
	sub r8,2
	mov r10,r8
	add r8,2
boucle1:
	lea r11,[rdi+r9*8]
	inc r9
	lea r12,[rdi+r9*8]
	dec r9
	mov r13,[r11]
	mov r14,[r12]
	cmp r13,r14
	jg faire
	jle boucle2
faire:
	xchg [r11],r14
	xchg [r12],r13
	inc r9
	cmp r9,r10
	jle boucle1
	jnle faire2
boucle2:
	inc r9
	cmp r9,r10
	jnle faire2
	jle boucle1
faire2:
	dec r8
	cmp r8,2
	jge boucle
	jl fin
fin:
	pop rbp
	ret

	
