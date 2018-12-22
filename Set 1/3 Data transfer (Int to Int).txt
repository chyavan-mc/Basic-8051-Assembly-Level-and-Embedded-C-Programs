;ALP to tranfer 10 bytes of data location
;starting from 30h to location starting from 35h

org 000h
	mov r0,#30h
	mov r1,#35h
	mov r2,#0Ah
	mov a,r0
	add a,r2
	mov r0,a
	mov a,r1
	add a,r2
	mov r1,a

rpt:	mov a,@r0
	mov @r1,a
	dec r1
	dec r0
	djnz r2,rpt
	end