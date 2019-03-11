;; temporarly put this subroutine here, but would be better into a custom script.
;; fix for the non moving ignore-gravity-objects (like projectiles) in the platform games:
;; (used by the HandleHorizontalInertia macro)
updateXPosForNonPlayerObjects:
	CPX player1_object							;; check if it's the player
	BEQ doneUpdatingXPosForNonPlayerObjects		;; if it IS, don't need to update
	LDA Object_vulnerability,x
    AND #%00100000								;; check if "ignore gravity" is set
	BEQ doneUpdatingXPosForNonPlayerObjects		;; if it is NOT, don't need to update
	LDA Object_movement,x
	AND #%10000000 								;; check if movement horizontal engaged
	BEQ doneUpdatingXPosForNonPlayerObjects		;; if it is NOT, don't need to update
	LDA xHold_lo
	STA Object_x_lo,x
	LDA xHold_hi 
	STA Object_x_hi,x
	;LDA nt_hold
	;STA Object_scroll,x		;;not sure what to do with this
doneUpdatingXPosForNonPlayerObjects:
	RTS