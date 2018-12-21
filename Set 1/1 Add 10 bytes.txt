;ALP to add 10 bytes of data

org 000h
	mov r2,#00h
	mov r0,#30h
	mov r1,#0Ah
	mov a,#00h
rpt:	add a,@r0
	inc r0
	jnc noc
	inc r2
noc:	djnz r1,rpt
	mov 41h,a	;Sum stored in 41h
	mov 42h,r2	;Carry stored in 42h
	end