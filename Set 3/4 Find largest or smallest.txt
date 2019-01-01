org 000h
	mov r0,#30h	;Set pointer to base of data
	mov r1,#0Ah	;Set N
	dec r1
	mov a,@r0
	inc r0
rpt:	mov b,@r0
	cjne a,b,nex1
nex1:	mov b,p1
	jb b.1, nex2
	jnc again
	sjmp agn
nex2:	jc again
agn:	mov a,@r0
again:	inc r0
	djnz r1,rpt
	mov 40h,a
	end