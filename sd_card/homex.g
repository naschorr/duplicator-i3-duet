; homex.g
; called to home the X axis

M98 P"homing_modifications.g" ; applies necessary modifications for the homing moves 

; get Z out of the way
G91                    ; relative positioning
G1 H2 Z5 F1200         ; lift Z	
M400                   ; wait for current moves to finish 

; home X
G1 H1 X5 F1200    ; move slowly away
G1 H1 X-255 F3600 ; move to X axis endstop and stop there (first pass)
G1 X5 F1200       ; go back a few mm
G1 H1 X-10 F3000  ; move to X axis endstop once more (second pass)
G1 X10 F1200      ; go back a few mm
M400              ; wait for current moves to finish 

; return Z to original position
G1 H1 Z-5 F1200
M400	     	    ; Wait for current moves to finish

M98 P"homing_modifications_reset.g" ; resets all modifications applied for the homing move