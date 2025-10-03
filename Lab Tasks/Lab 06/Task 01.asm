INCLUDE Irvine32.inc        ;Mutahir Ahmed Khan 24k-0030 
;Comments for own understanding
.data 
	
	msg1 BYTE "Welcome",0
    msg2 BYTE "You should not see this line",0
    msg3 BYTE "Goodbye",0


.code
main PROC 

    mov edx, OFFSET msg1
    call WriteString
    call Crlf

    jmp SkipSecond

    mov edx, OFFSET msg2
    call WriteString
    call Crlf

SkipSecond:
 
    mov edx, OFFSET msg3
    call WriteString
    call Crlf


exit
main ENDP
END main
