INCLUDE Irvine32.inc
.data

;24k-0030
;Mutahir Ahmed Khan

	enc BYTE ?
	msg BYTE "Enter	Binary: ", 0
	fiMsg BYTE "Encrypted: ", 0

.code
main PROC

		mov al, 10110110b
		rol eax, 2
		shr eax, 1

		mov edx, OFFSET fiMsg
		call WriteString
		movzx eax, al
		call WriteBin
	

main ENDP
end main
