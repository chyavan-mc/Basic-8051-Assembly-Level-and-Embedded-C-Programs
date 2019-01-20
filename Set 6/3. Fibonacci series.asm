org 000h
	mov r3,#09h	;Set 'N' number of terms
	mov a,#00h
	mov r1,#01h
	mov r2,#00h
	mov r0,#30h
repeat:	add a,r1
	mov @r0,a
	inc r0
	mov r1,02h
	mov r2,a
	djnz r3,repeat
	end