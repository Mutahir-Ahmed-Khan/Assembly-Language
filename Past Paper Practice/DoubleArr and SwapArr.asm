INCLUDE Irvine32.inc
.data
    originalArr WORD 1234h, 5768h, 9ABCh
    swappedArr WORD 3 DUP(?)
    doubleArr  WORD 3 DUP(?)
.code
main PROC
    mov esi, OFFSET originalArr    ; pointer to input array
    mov edi, OFFSET swappedArr     ; pointer to swapped array
    mov ebx, OFFSET doubleArr      ; pointer to doubled array
    mov ecx, 3                     ; number of elements

swap_loop:
    mov ax, WORD PTR [esi]         ; load original value (e.g. 1234h)

    ; --- swap bytes ---
    xchg ah, al                    ; swap AH and AL (no need for temp vars)
    mov WORD PTR [edi], ax         ; store swapped value (3412h, etc.)

    ; --- double the value ---
    mov dx, ax                     ; move swapped value to DX
    add dx, ax                     ; multiply by 2
    mov WORD PTR [ebx], dx         ; store doubled result

    ; --- print results ---
    movzx eax, WORD PTR [edi]      ; print swapped value
    call WriteHex
    call Crlf
    movzx eax, WORD PTR [ebx]      ; print doubled value
    call WriteDec
    call Crlf
    call Crlf

    ; move to next element
    add esi, 2
    add edi, 2
    add ebx, 2

    loop swap_loop

    exit
main ENDP
END main
