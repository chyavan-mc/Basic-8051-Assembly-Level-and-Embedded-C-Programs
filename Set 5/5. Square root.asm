org 000h
	mov r1,#144	;Number to be sqaure-rooted
	mov r0,#01
again:	mov b,r0
	mov a,r0
	mul ab
	cjne a,01h,next
	sjmp jump1
next:	jnc jump2
	inc r0
	sjmp again
jump2:	dec r0
jump1:	mov r0,00h
	end