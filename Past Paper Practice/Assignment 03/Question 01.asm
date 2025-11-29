INCLUDE Irvine32.inc
.data

    dividend DWORD 0D4A4h
    divisor DWORD 0Ah
    msg BYTE "Function Ended", 0
    emsg BYTE "Value of EAX: ", 0

.code
main PROC

    mov eax, dividend
    mov ebx, divisor
    call divideUntil

exit
main ENDP

divideUntil PROC
    
    xor edx, edx ;to clear edx, so ebx would divide only with eax (EDX:EAX)
    div ebx
    mov edx, OFFSET emsg
    call WriteString
    call WriteHex
    call Crlf
    cmp eax, 5h
    je L1

    call divideUntil
    ret

    L1: 
        mov edx, OFFSET msg
        call WriteString
        ret

divideUntil ENDP

END main
