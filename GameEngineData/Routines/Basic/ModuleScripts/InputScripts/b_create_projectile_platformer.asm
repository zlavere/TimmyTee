	LDA gameHandler
	AND #%00100000	
	BEQ canShoot
	JMP doneShooting
canShoot:
	LDX player1_object
	;;; IF YOU WANT TO USE AN SPECIFIC ANIMATION / ACTION STEP WHEN SHOOTING, comment out the following 3 lines: 
	;;; check if already shooting (assuming the shoot action step is 05)
	;GetCurrentActionType player1_object
	;CMP #$05
	;BNE notAlreadyShooting
	JMP wasAlreadyShooting 
notAlreadyShooting
	;;; IF YOU WANT TO USE AN SPECIFIC ANIMATION / ACTION STEP WHEN SHOOTING, comment out the following 1 line: 
	;;; if not already shooting, change it's action step (assuming the shoot action step is 05)
	;ChangeObjectState #$05, #$02
	
	;;; if you want your player stops when he's shooting, comment out the following lines:
	;LDA Object_movement,x
	;AND #%00001111
	;STA Object_movement,x
	;LDA #$00
	;STA Object_h_speed_hi,x
	;STA Object_h_speed_lo,x
	;STA Object_v_speed_hi,x
	;STA Object_v_speed_lo,x
	
;; if was already shooting
wasAlreadyShooting:

	LDA Object_movement,x
	AND #%00000111
	STA temp2
	TAY

	LDA Object_x_hi,x
	SEC 
	SBC #$08 ;; width of projectile 
	STA temp
	LDA Object_scroll,x
	SBC #$00
	STA temp3

	LDA temp
	;;; offset x for creation
	CLC
	ADC projOffsetTableX,y
	STA temp
	LDA temp3
	ADC #$00
	STA temp3

	LDA Object_y_hi,x
	CLC
	ADC projOffsetTableY,y
	sec
	sbc #$08 ;; height of projectile
	STA temp1	
	
	
    CreateObject temp, temp1, #OBJECT_PLAYER_PROJECTILE, #$00, temp3
  
    ;;;; x is now the newly created object's x.
    LDA Object_movement,x
    ORA temp2
    STA Object_movement,x
    LDY temp2
    LDA directionTable,y
    ORA Object_movement,x
    STA Object_movement,x
	
    ;PlaySound #SND_SHOOT
doneShooting:
	RTS
