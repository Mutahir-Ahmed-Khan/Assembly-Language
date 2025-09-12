INCLUDE Irvine32.inc ;Mutahir Ahmed Khan 24k-0030
comments are for own understanding\
.data

    aVal DWORD 10h
    bVal DWORD 12h
    cVal DWORD 20h
    dVal DWORD 25h

.code
main PROC

    mov ecx, aVal
    add ecx, bVal

    mov eax, aVal

    mov edx, bVal    
    neg edx    
    add eax, edx

    neg eax
    add eax, ecx

    add eax, cVal
    add eax, dVal

    call WriteHex
    exit

main ENDP
END main
