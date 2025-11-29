-------------------------------------------------
                  Str_compare
-------------------------------------------------
.data

	string1 BYTE "abcd", 0
	string2 BYTE "abcd", 0

.code
main PROC

	Str_compare PROTO
	INVOKE Str_compare, ADDR string1, ADDR string2
	call dumpRegs

	; string1 greater ZF = 0, CF = 0
	; string1 greater ZF = 1, CF = 0
	; string1 lesser ZF = 0, CF = 1
-------------------------------------------------
                  Str_length
-------------------------------------------------
.data

	string1 BYTE "abcd", 

.code
main PROC

	mov ecx, 0
	Str_compare PROTO

	INVOKE Str_length, ADDR string1
	call WriteDec

	;Return Length in eax
-------------------------------------------------
                  Str_copy
-------------------------------------------------
.data

	string1 BYTE "abcd",0
	string2 BYTE " ",0

.code
main PROC

	INVOKE Str_copy, ADDR string1, ADDR string2

	mov edx, OFFSET string2
	call WriteString
-------------------------------------------------
                  Str_trim
-------------------------------------------------
.data

  string_1 BYTE "Hellooo",0

.code
main PROC

  INVOKE Str_trim,ADDR string_1,'o'
  mov edx,OFFSET string_1
  call WriteString
-------------------------------------------------
                  Str_ucase
-------------------------------------------------
.data

  string_1 BYTE "Coal",0

.code
main PROC

  INVOKE Str_ucase,ADDR string_1
  mov edx,OFFSET string_1
  call WriteString
