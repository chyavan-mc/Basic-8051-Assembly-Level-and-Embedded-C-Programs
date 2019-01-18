org 000h
	mov a,#34h	;Byte to be tested
	mov b,a
	anl b,#0Fh
	anl a,#0F0h
	swap a
	cjne a,b, next
next:	jc lower
	mov p0,#0FFh
	sjmp done
lower:	mov p0,#00h
done:
	end