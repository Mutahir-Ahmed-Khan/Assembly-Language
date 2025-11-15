INCLUDE Irvine32.inc
;Mutahir Ahmed Khan [24k-0030]

.data
arr DWORD 5, 2, 9, 1, 7
count DWORD 5
msg BYTE "Sorted Array: ", 0

.code
main PROC
    push OFFSET arr
    push count
    call BubbleSort
    add esp, 8

    mov ecx, [count]     ; load actual value
    mov esi, OFFSET arr

    mov edx, OFFSET msg
    call WriteString
    call Crlf

printLoop:
    mov eax, [esi]
    call WriteDec
    call Crlf
    add esi, 4
    loop printLoop

    exit
main ENDP

BubbleSort PROC
    push ebp
    mov ebp, esp

    mov esi, [ebp + 8]    
    mov ecx, [ebp + 12]   

outerLoop:
    dec ecx
    cmp ecx, 0
    je doneSort

    mov edi, 0

innerLoop:
    mov eax, [esi + edi*4]
    mov ebx, [esi + edi*4 + 4]
    cmp eax, ebx
    jle skipSwap
    mov [esi + edi*4], ebx
    mov [esi + edi*4 + 4], eax

skipSwap:
    inc edi
    cmp edi, ecx
    jl innerLoop

    jmp outerLoop

doneSort:
    leave
    ret
BubbleSort ENDP

END main
