org 000h
	mov r2,#0Ah	;Counter
again1:	mov r1,#0Ah
	dec r1
	mov r0,#30h
again2:	mov a,@r0
	inc r0
	mov b,@r0
	cjne a,b,nex1
nex1:	jnc next
	xch a,b
	mov @r0,b
	dec r0
	mov @r0,a
	inc r0
next:	djnz r1,again2
	djnz r2,again1
	end