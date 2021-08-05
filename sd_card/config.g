; Configuration file for Duet 3 Mini 5+ (firmware version 3)
; executed by the firmware on start-up

; General preferences
G90                                                   ; send absolute coordinates...
M83                                                   ; ...but relative extruder moves
M550 P"Duplicator i3 Duet"                            ; set printer name

; Network
M552 S1                                               ; enable network
M586 P0 S1                                            ; enable HTTP
M586 P1 S0                                            ; disable FTP
M586 P2 S0                                            ; disable Telnet

; Drives
M569 P0.0 S1                                          ; physical drive 0.0 goes backwards   (Right Z axis motor)
M569 P0.1 S1                                          ; physical drive 0.1 goes backwards   (Left Z axis motor)
M569 P0.2 S0                                   		  ; physical drive 0.2 goes forwards    (Y axis motor)
M569 P0.3 S0                                          ; physical drive 0.3 goes forwards    (Extruder motor)
M569 P0.4 S1                                      	  ; physical drive 0.4 goes backwards   (X axis motor)
M584 X0.4 Y0.2 Z0.0:0.1 E0.3                          ; set drive mapping
M350 X128 Y128 Z128 I0                                ; configure microstepping without interpolation
M350 E16 I1                                           ; configure microstepping with interpolation
M92 X640.00 Y640.00 Z3200.00 E161.6                   ; set steps per mm
M566 X900.00 Y900.00 Z12.00 E120.00                   ; set maximum instantaneous speed changes (mm/min)
M203 X12000.00 Y12000.00 Z1200.00 E3000.00            ; set maximum speeds (mm/min)
M201 X800.00 Y800.00 Z80.00 E5000.00               	  ; set accelerations (mm/s^2)
M906 X855 Y855 Z855 E600 I30                          ; set motor currents (mA) and motor idle factor in per cent. See http://www.hacking3d.com/2016/05/wanhao-duplicator-i3-v2-stepper-tuning.html. Lowered extruder motor current for heat mitigation.
M84 S30                                               ; Set idle timeout

; Axis Limits
M208 X0 Y0 Z0 S1                                      ; set axis minima
; M208 X200 Y210 Z145 S0                              ; Axis maxima with stock bed
M208 X200 Y220 Z145 S0                                ; Axis maxima with the borosilicate glass bed upgrade (see README.md)

; Geometry
M669 K0												  ; Cartesian
M671 X-45:245 Y0:0 						  			  ; Set Z leadscrew positions (-15,0) and (100,0)

; Endstops
M574 X1 S3                                            ; configure sensorless endstop for low end on X
M574 Y1 S3                                            ; configure sensorless endstop for low end on Y
M574 Z1 S2                                            ; configure Z-probe endstop for low end on Z

; Stallguard
M915 X S3 F0 H234 R0
M915 Y S3 F0 H234 R0								  ; Slightly less sensitive Y axis stall detection, as it would tend to trigger too early without it

; BLTouch Z-Probe
M950 S0 C"io1.out"                                    ; create servo pin 0 for BLTouch
M558 P9 C"^io1.in" H5 F6000 T6000                     ; set Z probe type to bltouch and the dive height + speeds    F120 normally
G31 P500 X30.698 Y0 Z3.45                             ; set Z probe trigger value, offset and trigger height
M557 X32:178 Y32:188 S33.6:37.6                       ; define mesh grid

; Heaters
M308 S0 P"temp0" Y"thermistor" T100000 B3988          ; configure sensor 0 as thermistor on pin temp0
M950 H0 C"out0" T0                                    ; create bed heater output on out0 and map it to sensor 0
M307 H0 R0.279 C579.1 D3.15 S1.00 V12.1 B0			  ; Bed heater configuration with Borosilicate glass bed, Meanwell LRS 350, and disable bang-bang heating. Make sure to run "M303 H0 S60" to tune this properly.
M140 H0                                               ; map heated bed to heater 0
M143 H0 S120                                          ; set temperature limit for heater 0 to 120C
M308 S1 P"temp1" Y"thermistor" T100000 B4725 C7.06e-8 ; configure sensor 1 as thermistor on pin temp1
M950 H1 C"out1" T1                                    ; create nozzle heater output on out1 and map it to sensor 1
M307 H1 B0 S1.00                                      ; disable bang-bang mode for heater and set PWM limit
M143 H1 S280                                          ; set temperature limit for heater 1 to 280C

; Fans
M950 F0 C"out5" Q500                         	      ; Create fan 0 on pin out5 and set its frequency. Per the wiki, this will be the Print Cooling Fan.
M106 P0 C"Print Fan" S0 X0.75 H-1                  	  ; Set fan speed to 0, and disable thermostatic control, as printable gcode will control this. Limit speed to 75% of full as this is a beefy 5.4 cfm Sunon fan.
M950 F1 C"out3" Q25000								  ; Create fan 1 on pin out3 and set its frequency. Per the wiki, this will be the Extruder Heatsink Fan.
M106 P1 C"Extruder Heatsink Fan" T55 S255 H1  		  ; Set the fan to full speed, but only after the extruder reaches 55c.
M950 F2 C"out4" Q25000                                ; Create fan 2 on pin out4 and set its frequency.
M106 P2 C"Electronics Fan" B0.1 L0.25 T35:60 H100     ; Set fan 2 name and value. Thermostatic control is turned on. Blip for 100ms. Set minimum speed to 1/4 of max, and start to turn on when the MCU hits 35c, then ramp up until it hits 60c.

; Tools
M563 P0 S"E3D V6" D0 H1 F0                            ; define tool 0
G10 P0 X0 Y0 Z0                                       ; set tool 0 axis offsets
G10 P0 R0 S0                                          ; set initial tool 0 active and standby temperatures to 0C
M290 Z-0.05											  ; Set babystepping to get that perfect first layer smoosh. Configure/disable this as needed.
M572 D0 S0.04										  ; Configure pressure advance. See https://marlinfw.org/tools/lin_advance/k-factor.html, then replace instances of "M900 K" to be "M572 D0 S".

; Miscellaneous
; M564 H0												  ; Move axes without homing
; M18 XYE												  ; Unlock the X, Y, and Extruder motors for manual movement
T0                                                    ; select first tool
