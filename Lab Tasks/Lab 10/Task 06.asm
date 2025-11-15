INCLUDE Irvine32.inc
;Mutahir Ahmed Khan [24k-0030]
.data
msg     BYTE "Enter a number: ", 0
rmsg    BYTE "Factorial = ", 0
num     DWORD ?
factRes DWORD ?

.code
main PROC
    mov edx, OFFSET msg
    call WriteString
    call ReadDec
    mov num, eax

    push num
    call factorialLoop
    add esp, 4
    mov factRes, eax

    mov edx, OFFSET rmsg
    call WriteString
    mov eax, factRes
    call WriteDec
    call Crlf

    exit
main ENDP

factorialLoop PROC
    push ebp
    mov ebp, esp

    mov eax, [ebp + 8]
    mov ecx, eax
    mov eax, 1

factLoop:
    cmp ecx, 1
    jl doneL
    imul eax, ecx
    dec ecx
    jmp factLoop

doneL:
    leave
    ret
factorialLoop ENDP

END main
