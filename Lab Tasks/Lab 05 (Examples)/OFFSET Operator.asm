INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 

	Val BYTE ?
	Val WORD ?
	Val DWORD ?
	Val2 DWORD ?

.code
main PROC 
	
	mov esi, OFFSET bval ; ESI = 00404000
	mov esi, OFFSET wVal ; ESI = 00404001
	mov esi, OFFSET dVal ; ESI = 00404003
	mov esi, OFFSET dVal2 ; ESI = 00404007

exit
main ENDP
END main
