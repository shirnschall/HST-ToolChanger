; tpost1.g
; called after tool 1 has been selected

;heatup
;M116 P0

;prime nozzle
M98 P"prime.g"
;clean nozzle
M98 P"clean.g"

M106 R1	; restore print cooling fan speed

;Move Out
G1 X145.9 Y220 F10000