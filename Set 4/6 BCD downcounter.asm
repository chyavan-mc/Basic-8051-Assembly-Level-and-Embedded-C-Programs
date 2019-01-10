org 000h
again:	mov a,#99h
upc:	mov p0,a
	acall delay
	add a,#99h
	da a
	cjne a,#00h,upc
	sjmp again

delay:	mov r1,#0FFh
del1:	mov r2,#0FFh
del2: 	mov r3,#0FFh
del3:	djnz r3,del3
	djnz r2,del2
	djnz r1,del1
	ret

	end