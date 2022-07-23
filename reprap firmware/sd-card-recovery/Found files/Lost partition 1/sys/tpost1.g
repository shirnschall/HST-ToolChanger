; tpost1.g
; called after tool 1 has been selected

;heatup
;M116 P1
;M116 is also in bed.g thus
;only ust if standby temp is not printing temp. this will add a few seconds delay to check if temp is stable

;prime nozzle
M98 P"prime.g"
;clean nozzle
M98 P"clean.g"

M106 R1	; restore print cooling fan speed

;Move Out
G1 X53.4 Y220 F10000