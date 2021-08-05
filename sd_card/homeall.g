; called to home all axes
M98 P"homing_modifications.g" ; applies necessary modifications for the homing moves 

; get Z out of the way
G91                    ; relative positioning
G1 H2 Z10 F1200        ; lift Z	
M400                   ; wait for current moves to finish 

; home X
G1 H1 X5 F1200    ; move slowly away
G1 H1 X-255 F3600 ; move to X axis endstop and stop there (first pass)
G1 X5 F1200       ; go back a few mm
G1 H1 X-10 F3000  ; move to X axis endstop once more (second pass)
G1 X10 F1200      ; go back a few mm
M400              ; wait for current moves to finish 

; home Y
G1 H1 Y5 F1200    ; move slowly away
G1 H1 Y-255 F3600 ; move to Y axis endstop and stop there (first pass)
G1 Y5 F1200       ; go back a few mm
G1 H1 Y-10 F3000  ; move to Y axis endstop once more (second pass)
G1 Y10 F1200      ; go back a few mm
M400              ; wait for current moves to finish

; home Z
G90                  ; absolute positioning
G1 X5.698 Y25 F6000  ; go to first probe point
G30                  ; home Z by probing the bed
G29 S1				 ; load the saved height map
M376 H2.4			 ; Set compensation taper, my height map's max deviation was 0.117 mm, so 20 * 0.117 mm = 2.4 mm
M400

M98 P"homing_modifications_reset.g" ; resets all modifications applied for the homing move
