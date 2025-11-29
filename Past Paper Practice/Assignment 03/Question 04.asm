INCLUDE Irvine32.inc

.data
arr1 DWORD 1,5,5,5,5,5,2,3
arr2 DWORD 1,2,3,4,5
arr3 DWORD 5,5,5,5,5
arr4 DWORD 1,2,3,4,5,5,5,5
size1 DWORD LENGTHOF arr1
size2 DWORD LENGTHOF arr2
size3 DWORD LENGTHOF arr3
size4 DWORD LENGTHOF arr4

.code
main PROC
    mov eax, OFFSET arr1
    mov ebx, size1
    call FindFive
    call WriteDec
    call Crlf

    mov eax, OFFSET arr2
    mov ebx, size2
    call FindFive
    call WriteDec
    call Crlf

    mov eax, OFFSET arr3
    mov ebx, size3
    call FindFive
    call WriteDec
    call Crlf

    mov eax, OFFSET arr4
    mov ebx, size4
    call FindFive
    call WriteDec
    call Crlf

    exit
main ENDP

FindFive PROC arrayPtr:DWORD, arraySize:DWORD
    push esi
    push edi
    push ecx
    push edx

    mov esi, arrayPtr
    mov ecx, arraySize
    cmp ecx, 5
    jl notFound
    xor edi, edi

checkLoop:
    mov eax, ecx
    sub eax, 4
    cmp edi, eax
    jge notFound
    xor edx, edx

checkFive:
    cmp edx, 5
    je found
    mov eax, edi
    add eax, edx
    shl eax, 2
    cmp DWORD PTR [esi + eax], 5
    jne nextIndex
    inc edx
    jmp checkFive

nextIndex:
    inc edi
    jmp checkLoop

found:
    mov eax, 1
    jmp exitProc

notFound:
    xor eax, eax

exitProc:
    pop edx
    pop ecx
    pop edi
    pop esi
    ret 8
FindFive ENDP

END main
