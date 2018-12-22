;ALP to transfer 10 bytes of data starting from location
;8000h to location 9000h within the external memory

org 000h
	mov dptr,#8000h
	mov r0,#00h
	mov r1,#90h
	mov r2,#0Ah
rpt:	movx a,@dptr
	push dpl
	push dph
	mov r3,a
	mov a,r1
	mov dph,a
	mov a,r0
	mov dpl,a
	mov a,r3
	movx @dptr,a
	inc dptr
	mov a,dph
	mov r1,a
	mov a,dpl
	mov r0,a
	pop dpl
	pop dph
	inc dptr
	djnz r2,rpt
	end