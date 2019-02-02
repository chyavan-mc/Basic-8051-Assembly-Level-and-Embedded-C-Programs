org 000h
	ljmp main
org 000bh
	ljmp timer

org 100h
main:	mov tmod,#01h
	mov ie,#82h	;Enable timer0 interrupt
	mov th0,#0B7h
	mov tl0,#0FFh
	setb tr0
wait:	sjmp wait

org 200h
timer:	clr tr0
	jb p1.5,next
	clr p1.5
	mov th0,#6Fh
	mov tl0,#0FEh
	sjmp done
next:	setb p1.5
	mov th0,#0B7h
	mov tl0,#0FFh
done:	setb tr0
	reti

	end