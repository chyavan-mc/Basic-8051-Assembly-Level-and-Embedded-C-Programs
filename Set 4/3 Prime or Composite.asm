org 000h
	mov r1,#02h
	mov r2,#14		;Enter decimal 'N' data to be tested
	cjne r2, #02h, next	;Check number is less than 2
next:	jc prime
	mov b,#02h
	mov a,r2
	div ab
	mov r0,a
	inc r0
rpt:	mov b,r1
	mov a,r2
	div ab
	xch a,b
	jz compo		;Check for divisibility from 2 to 'N/2'
	inc r1
	mov a,r1
	cjne a,00h,rpt
prime:	mov p0,#0FFh
	sjmp done
compo:	mov p0,#00h
done:
	end