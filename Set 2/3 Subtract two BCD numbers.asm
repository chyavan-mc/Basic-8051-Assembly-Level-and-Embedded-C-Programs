;ALP to subtract two BCD numbers

org 000h
	mov r0,#72h	; Set minuend
	mov r1, #37h	; Set subtrahend
	mov r2,#00h
	mov a,#99h
	subb a,r1
	add a,#01h
	da a		; Accumulator has 9A's complement
	mov b,r0
	xch a,b
	add a,b
	da a
	mov r2,a	; Result of subtraction stored in R2
	end