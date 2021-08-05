; reset all homing modifications applied in homing_modifications.g

M913 X100 Y100 Z100     ; return current to 100% for X, Y, and Z
M569 P0.4 V2000         ; restore default V for X
M569 P0.2 V2000         ; restore default V for Y
G90                     ; absolute positioning