section .text
global fib
fib:
	push 	rbx			; push whatever is in rbx to stack
	mov	rbx, rdi		; put your current input value (n) into rbx
	mov	rax, rbx		; set your n as the return value (for the 0 and 1 cases)
	cmp	rbx, 1			; compare your n to 1
	jle	L0			; if n <= 1 go to L0
	lea	rdi, [rbx - 1]		; otherwise setup rdi for the n - 1 call
	call	fib
	push 	rax			; push the result
	lea	rdi, [rbx - 2]		; setup rdi for the n-2 call
	call	fib
	pop	rdx
	add	rax, rdx		; add n-1 result to n-2 result
L0:
	pop	rbx
	ret
