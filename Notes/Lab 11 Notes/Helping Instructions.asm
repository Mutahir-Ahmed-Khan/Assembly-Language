------------------------------------------------------------------
                      STOSB,STOSW,STOSD
------------------------------------------------------------------
.data
count DWORD 100
string1 BYTE 100 DUP(?)

.code
main PROC

    mov al,0FFh ;Step 01 mov al k andar jo store karana hai

    mov edi,OFFSET string1  ;point karwao dest ki taraf

    mov ecx,count   ;ecx ko array ka size dedo

    cld ;Forward Direction

    rep stosb ;instruction itself

------------------------------------------------------------------
                      LODSB,LODSW,LODSD
------------------------------------------------------------------
Mov esi contents to al,ax,eax

ESI ----> STO ----> AL,AX,EAX ----> LOD ----> EDI

.data

    arr DWORD 1,2,3,4,5,6,7,8,9
    multiplier DWORD 10

.code
main PROC

    mov esi, OFFSET arr
    mov edi, esi  ;ESI and EDI point to arr[0], so that it load, mul and store at arr[0], inc auto
    cld
    mov ecx, LENGTHOF arr

    L1:
        lodsd
        mul multiplier
        stosd
        loop L1

    mov ecx, LENGTHOF arr
    mov esi, 0
    L2: 
        mov eax, arr[esi * TYPE arr]
        call WriteDec
        inc esi
        call Crlf
        loop L2
