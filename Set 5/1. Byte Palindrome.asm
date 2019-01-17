org 000h
	mov r2,#98h	;Data to be checked
	mov a,r2
	mov r1,#04h
	mov b,#00h

repeat:	rlc a
	xch a,b
	rrc a
	xch a,b
	djnz r1, repeat

	cjne a,b, notpal
	mov p0,#00h
	sjmp done
notpal:	mov p0,#0FFh
done:
	end