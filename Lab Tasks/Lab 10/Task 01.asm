INCLUDE Irvine32.inc 
.data

 var1 DWORD 5
 var2 DWORD 5
 var3 DWORD 5

.code
main PROC

	push var1
	push var2
	push var3
	call threeProd
	add esp, 12
	call WriteDec

exit
main ENDP

threeProd PROC

	push ebp
	mov ebp, esp
	mov eax, [ebp + 8]
	imul eax, [ebp + 12]
	imul eax, [ebp + 16]

	leave
	ret

threeProd ENDP

END main
