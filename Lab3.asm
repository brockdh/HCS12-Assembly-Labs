  ABSENTRY Entry
  INCLUDE 'mc9s12xs256.inc'
  org $2000
arr_x dc.b 13, 127, 255, 88, 200, 58, 211, 101, 168, 44

  org $1000
Entry:
N equ 10
  ldy #0
  ldx #arr_x
  ldaa 0,x
  ldab 0,x
loop: cpy#N
  BEQ done
  inx
  cmpb 0,x
  BLO higher
  ldab 0,x
higher: cmpa 0,x
  BHI lower
  ldaa 0,x
lower: iny
  BRA loop
donw: stab $2200
  staa $2201
  ldy #0
  ldx #arr_x
  ldaa 0,x
  ldab 0,x
sloop: cpy #N
  BEQ sdone
  inx
  cmpb 0,x
  BLT shigher
  ldaa 0,x
slower iny
  BRA sloop
sdone: stab $2203
 staa $2204

here jmp here
end
