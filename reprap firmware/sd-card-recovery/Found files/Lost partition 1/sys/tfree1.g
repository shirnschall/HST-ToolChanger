; tfree1.g
; called when tool 1 is freed

;Drop the bed
;G91
;G1 Z1 F1000
;G90

;Purge nozzle
;M98 P"purge.g"

;Move In
G1 X53.4 Y220 F50000
;retract
G92 E0
G1 E-3 F800.0 ; retract 3 mm
G92 E0
;move all the way in
G53 G1 X65.7 Y239.4 F5000

;Open Coupler
M98 P"/macros/Coupler - Unlock"

;fan off
;M106 P2 S0

;Move Out
G53 G1 X65.7 Y220 F10000