org 000h
	mov r1,#09h	;Enter First number
	mov r2,#0Ch	;Enter Second number
	mov a,r1
	cjne a,r2,next
	mov r5,02h
	sjmp done
next:	jc next1
	mov r4,02h
	sjmp next2
next1:	mov r4,01h
next2:	inc r4
	mov r3,#01h
repeat2:mov a,r4
	mov b,r3
	div ab
	xch a,b
	jnz repeat
	mov a,r2
	mov b,r3
	div ab
	xch a,b
	jnz repeat
	mov r5,03h		;HCF in R5
repeat:	inc r3
	djnz r4,repeat2
done:	mov a,r1
	mov b,r2
	mul ab
	mov b,r5
	div ab
	mov r6,a		;LCM in R6
	end