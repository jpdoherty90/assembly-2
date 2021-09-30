section .text
global index
index:
	; rdi: matrix pointer
	; rsi: rows
	; rdx: cols
	; rcx: rindex
	; r8: cindex	; 2

	imul		rcx, rdx
	imul		rcx, 4

	imul 		r8, 4

	add			rdi, rcx
	add			rdi, r8

	mov			rax, [rdi]
	ret
