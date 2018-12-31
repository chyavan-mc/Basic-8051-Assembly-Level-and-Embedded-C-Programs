org 000h
	mov r0,#30h	;Pointer to the base of the array
	mov r1,#0Ah	;Set N
	mov r2,#00h
	mov r3,#00h
rpt:	mov a,@r0
	jnb a.7, next
	inc r3		;increment negative count
	sjmp again
next:	inc r2		;increment positive count
again:	inc r0
	djnz r1, rpt
	end