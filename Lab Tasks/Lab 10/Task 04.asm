INCLUDE Irvine32.inc
;Mutahir Ahmed Khan [24k-0030]
.data

	msg BYTE "Enter the Number: ", 0
	rmsg BYTE "The Squared Number is: ", 0
	
.code
main PROC

	call localSquare

exit
main ENDP

localSquare PROC
	enter 4, 0

	mov edx, OFFSET msg
	call WriteString
	call ReadDec

	mov DWORD PTR [ebp - 4], eax
	imul eax, DWORD PTR [ebp - 4]
	
	mov edx, OFFSET rmsg
	call WriteString
	call WriteDec

	leave
	ret
localSquare ENDP

END main
