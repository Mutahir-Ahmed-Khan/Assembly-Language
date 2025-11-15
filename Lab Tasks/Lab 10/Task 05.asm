INCLUDE Irvine32.inc
;Mutahir Ahmed Khan [24k-0030]
.data
	
	msg BYTE "Enter the Number: ", 0
	var1 DWORD ?
	rmsg BYTE "The result is: ", 0

.code
main PROC

	mov edx, OFFSET msg 
	call WriteString
	call ReadDec
	mov var1, eax
	push var1
	call factorial
	add esp, 4

	mov edx, OFFSET rmsg
	call WriteString
	call WriteDec

exit
main ENDP

factorial PROC 
	push ebp
	mov ebp, esp
	mov eax, [ebp + 8]

	cmp eax, 0 
	je L1

	push eax
	dec eax
	push eax
	call factorial
	add esp, 4

	pop ebx
	imul eax, ebx
	jmp done

	L1: 
		mov eax, 1

	done:	
		leave 
		ret
factorial ENDP

END main
