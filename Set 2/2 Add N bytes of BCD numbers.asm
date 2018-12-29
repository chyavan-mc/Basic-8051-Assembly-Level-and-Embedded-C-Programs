;ALP to add 'N' bytes of BCD numbers
;taking into account the possible carry out

org 000h
	mov r0,#30h
	mov r1,#0Ah	;Set 'N'
	clr a
	mov r2,#00h

rpt:	add a,@r0
	da a
	jnc nocar
	mov r3,a
	mov a,r2
	add a,#01h
	da a
	mov r2,a
	mov a,r3
nocar:	inc r0
	djnz r1, rpt
	mov @r0,a	;Resulting sum stored in last pointer location
	inc r0
	mov a,r2
	mov @r0,a	;Resulting carry stored after the sum
	end