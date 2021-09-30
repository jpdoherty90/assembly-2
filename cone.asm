default rel

section .data
     pi_over_3:  dd 1.04719

section .text
global volume
volume:
	mulss		xmm0, xmm0
	mulss		xmm0, xmm1
	mulss   	xmm0, [pi_over_3]
 	ret
