;ALP to find average of 'N' bytes of
;data (Considering carry during summation)

org 000h
	mov r0,#30h	; Set pointer to first data
	mov r1,#0Ah	; Set 'N'
	mov r2,#00h
	clr a
	mov b,r1

rpt:	a,@r0
	jnc nocar
	inc r2
	clr c
nocar:	inc r0
	djnz r1, rpt	; Sum in A, Carry in R2

	mov r7,#00h	
agn:	cjne a,b,adr1
adr1:	jc adr2
	subb a,b
	inc r7
	sjmp agn

adr2:	clr c
	mov r6,a
	mov a,r2
	jz stop
	mov a,r6
	subb a,b
	inc r7
	dec r2
	sjmp agn

stop:			; Remainder at R6, Quotient at R7
	end