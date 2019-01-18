org 000h
	mov r1,#30h	;Pointer to 30h
	mov r0,#56h	;BCD Data to be converted
	mov a,r0
	anl a,#0Fh
	add a,#30h
	mov @r1,a
	mov a,r0
	anl a,#0f0h
	swap a
	inc r1
	add a,#30h
	mov @r1,a
	end