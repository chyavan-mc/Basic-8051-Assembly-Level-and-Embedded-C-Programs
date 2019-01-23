org 000h
	mov tmod,#01h
repeat:	mov tl0,#00h
	mov th0,#00h	;(tl0,th0)=(00,00) for max delay and (FF,FF) for minimum delay
	setb tr0
wait:	jnb tf0,wait
	clr tr0
	clr tf0
	cpl p1.5
	sjmp repeat
	end