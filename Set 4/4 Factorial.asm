org 000h
	mov r0, #05h		;Data whose factorial is to be found
	mov a,r0
	cjne a,#02h,nex
nex:	jnc nexx
	mov a,#01h
	sjmp done
nexx:	acall fact

fact:	dec r0
	cjne r0,#01,next
	sjmp done
next:	mov b,r0
	mul ab
	acall fact

done:	mov 40h,a
	end