org 000h
	mov tmod,#00h
repeat:	setb p1.5
	acall tmode2
	clr p1.5
	acall tmode2
	acall tmode2
	sjmp repeat

tmode2:	mov r0,#73
again:	mov th0,#03h
	setb tr0
wait:	jnb tf0,wait
	clr tf0
	djnz r0,again
	ret
	
	end