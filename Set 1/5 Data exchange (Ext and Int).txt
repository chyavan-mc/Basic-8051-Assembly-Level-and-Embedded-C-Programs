;ALP to exchange 10 bytes of data from location starting
;at 30h with data from location starting from 1000h

org 000h
	mov r2,#0Ah
	mov r0,#30h
	mov dptr,#1000h
rpt:	movx a,@dptr
	mov b,@r0
	xch a,b
	mov @r0,b
	movx @dptr,a
	inc r0
	inc dptr
	djnz r2,rpt
	end