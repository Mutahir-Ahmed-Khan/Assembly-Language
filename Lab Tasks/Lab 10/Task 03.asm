INCLUDE Irvine32.inc

.data
    count DWORD 20
    arr DWORD 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20
    minMsg BYTE "Min = ", 0
    maxMsg BYTE "Max = ", 0

.code
main PROC
    push OFFSET arr
    push count
    call MinMaxArr
    exit
main ENDP

MinMaxArr PROC
    push ebp
    mov ebp, esp

    mov ecx, [ebp + 12]
    mov esi, [ebp + 8]

    mov eax, [esi]
    mov ebx, eax

FindingMinMax:
    mov edx, [esi]
    cmp edx, eax
    jl setMin
    cmp edx, ebx
    jg setMax
    jmp nextElement

setMin:
    mov eax, edx
    jmp nextElement

setMax:
    mov ebx, edx
    jmp nextElement

nextElement:
    add esi, 4
    loop FindingMinMax

    mov edx, OFFSET minMsg
    call WriteString
    mov eax, eax
    call WriteDec
    call Crlf

    mov edx, OFFSET maxMsg
    call WriteString
    mov eax, ebx
    call WriteDec
    call Crlf

    leave
    ret
MinMaxArr ENDP

END main
