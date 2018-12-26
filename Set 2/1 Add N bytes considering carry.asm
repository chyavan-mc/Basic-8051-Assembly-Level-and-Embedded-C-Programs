;ALP to add 'N' bytes of data taking
;into account the possible carry output

org 000h
	mov r0,#30h
	mov r1,#0Ah	;Set 'N'
	mov r2,#00h
	clr a

rpt:	add a,@r0
	inc r0
	jnc nocar
	inc r2
nocar:	djnz r1,rpt
	mov @r0, A	;Resulting Sum stored at the end of 'N' bytes
	inc r0
	mov a,r2
	mov @r0,a	;Resulting Carry stored after Sum
	end