;ALP to tranfer 10 bytes of data location
;starting from 35h to location starting from 30h

org 000h
	mov r0,#35h
	mov r1,#30h
	mov r2,#0Ah

rpt:	mov a,@r0
	mov @r1,a
	inc r1
	inc r0
	djnz r2,rpt
	end