INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 
	
	arrayB BYTE 25,45,65
	arrayW WORD 155,185,225
	arrayD DWORD 645,690,735
	SUM1 DWORD ?
	SUM2 DWORD ?
	SUM3 DWORD ?

.code
main PROC 

	movzx eax, arrayB  
	movzx ebx, arrayW 
	mov ecx, arrayD

	mov SUM1, eax
	add SUM1, ebx
	add SUM1, ecx
	mov eax, SUM1
	call WriteDec
	
	call Crlf 

	movzx eax, [arrayB + 1]
	movzx ebx, [arrayW + 2]
	mov ecx, [arrayD + 4]

	mov SUM2, eax
	add SUM2, ebx
	add SUM2, ecx
	mov eax, SUM2
	call WriteDec

	call Crlf

	movzx eax, [arrayB + 2]
	movzx ebx, [arrayW + 4]
	mov ecx, [arrayD + 8]

	mov SUM3, eax
	add SUM3, ebx
	add SUM3, ecx
	mov eax, SUM3
	call WriteDec

exit
main ENDP
END main
