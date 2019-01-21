org 000h
	mov r0,#00h
	mov r1,#05h
	mov r2,#13h	;Byte to be tested for 2-out-of-5 code
	mov a,r2
	anl a,#0E0h
	jnz done
	mov a,r2
	clr c
repeat:	rrc a
	jnc next
	inc r0
next:	djnz r1,repeat
	cjne r0,#02h,done
	mov p0,#00h
	sjmp ext
done:	mov o0,#0FFh
ext:
	end