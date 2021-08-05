; tune motor drivers, set motor current and V parameter for homing moves

; apply modifications
M569 P0.4 V10          ; reduce V to ensure stealthChop is enabled for X
M569 P0.2 V10          ; reduce V to ensure stealthChop is enabled for Y
M913 X50 Y50 Z25       ; drop X and Y motor current to 50%, and Z to 25%
G4 P100                ; wait 100ms

; tune drivers
G91                      ; relative positioning
G1 H2 X0.2 Y0.2 F3000    ; power up motors to ensure they are not stalled
G4 P100                  ; wait 100ms
M400                     ; wait for current moves to finish