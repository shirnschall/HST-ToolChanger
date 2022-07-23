; tfree1.g
; called when tool 1 is freed

;Drop the bed
;G91
;G1 Z1 F1000
;G90

;Purge nozzle
;M98 P"purge.g"

;Move In
G1 X145.9 Y220 F50000
;retract
G92 E0
G1 E-5 F800.0 ; retract 5 mm
G92 E0
;move all the way in
G53 G1 X158.2 Y239.5 F5000

;Open Coupler
M98 P"/macros/Coupler - Unlock"

;fan off
;M106 P2 S0

;Move Out
G53 G1 X158.2 Y220 F10000