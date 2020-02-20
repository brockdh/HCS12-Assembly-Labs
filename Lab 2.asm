;--------------------------------------
; Lab 2
; Basic Arithmetic Programming
; Douglas Brock 10/1/2018
; Puts five numbers in addresses
; $2000 -> $2004, and adds them up
; stored in $2010~&2011, then
; calculates the average to be stored
; in the next byte memory, and subtracts
; the average from the sum, and stores 
; the result in the following memory
;--------------------------------------

	org $1000
	ldd $2000
	ldx #50
	stx 0,d
	ldx #188
	stx 1,d
	ldx #63
	stx 2,d
	ldx #211
	stx 3,d
	ldx #3
	stx 4,d
	addd 1,d
	addd 2,d
	addd 3,d
	addd 4,d
	stab $2011
	staa $2010
	ldy $2012
	ldd $2010
	ldx $5
	ediv
	