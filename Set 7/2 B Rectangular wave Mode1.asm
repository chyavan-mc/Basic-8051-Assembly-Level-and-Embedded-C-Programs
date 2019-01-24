org 000h
	mov tmod,#00h
repeat:	setb p1.5
	acall tmode1
	clr p1.5
	acall tmode1
	acall tmode1
	sjmp repeat

tmode1:	mov tl0,#0FFh
	mov th0,#0B7h
	setb tr0
wait:	jnb tf0,wait
	clr tr0
	clr tf0
	ret
	
	end