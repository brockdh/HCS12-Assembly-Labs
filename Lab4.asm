	ABSENTRY Entry
	INCLUDE 'mc9s12xs256.inc'

	org $1500

arr_x	dc.v 133, 1200, 1390, 1900, 1881, 3939, 2010, 4080, 9801, 4592, 11, 22, 33, 3333, 3242, 5435, 8760, 9800, 2876, 9601

	org $2000
Entry:
N 	equ	20
	ldx	#$1500
	ldy	#0
	sty	$1000
loop:	cpy	#N
	beq	done
	ldd	0,x
	rorb
	ldd	$1000
	bcc	even
	adcb	#0
	bra cont
even	adca #1
cont	std	$1000
	iny
	inx
	inx
	bra	loop
done	ldd	$1000
	aba
M	equ	$1002
	staa	M
	end
here	jmp	here
	end
