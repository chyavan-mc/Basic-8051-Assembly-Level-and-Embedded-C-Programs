org 000h
	mov tmod,#00h
repeat:	setb p1.5
	acall tmode0
	clr p1.5
	acall tmode0
	acall tmode0
	sjmp repeat

tmode0:	mov r0,#03h
again:	mov tl0,#00h
	mov th0,#50h
	setb tr0
wait:	jnb tf0,wait
	clr tr0
	clr tf0
	djnz r0,again
	ret
	
	end