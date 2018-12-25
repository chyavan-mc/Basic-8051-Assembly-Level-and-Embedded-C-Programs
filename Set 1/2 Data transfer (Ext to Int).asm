;ALP to tranfer 10 bytes of data from external RAM
;location starting from 2000h to internal RAM location
;starting from 30h

org 000h
	mov dptr,#2000h
	mov r1,#30h
	mov r0,#0Ah
	mov a,#00h
rpt:	movx a,@dptr
	mov @r1,a
	inc r1
	inc dptr
	djnz r0,rpt
	end