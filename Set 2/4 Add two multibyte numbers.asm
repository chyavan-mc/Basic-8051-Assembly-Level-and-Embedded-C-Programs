;ALP to add two multibyte numbers

org 000h
	mov r0,#30h	; Set pointer to LSB of first number
	mov r1,#40h	; Set pointer to LSB of second number
	mov r2,#04h	; Set number of bytes
	clr c
loop:	mov a,@r0
	addc a,@r1
	mov @r0,a
	inc r0
	inc r1
	djnz r2,loop
	jnc stop
	mov @r0,#01h
stop:
	end