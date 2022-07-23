; disable all tools if one is active
if (state.currentTool != -1)
	T-1

; Home C (ToolHead)
M98 P"homec.g"			


G91               ; relative positioning
G1 Z15 F500 H2    ; lift Z relative to current position

; homey
G1 H1 Y-305 F1800 ; move quickly to Y axis endstop and stop there (first pass)
G1 Y5 F6000       ; go back a few mm
G1 H1 Y-305 F360  ; move slowly to Y axis endstop once more (second pass)

; homex
G1 H1 X305 F1800 ; move quickly to X axis endstop and stop there (first pass)
G1 X-5 F6000       ; go back a few mm
G1 H1 X305 F360  ; move slowly to X axis endstop once more (second pass)

; homez
G90              ; absolute positioning
G1 X138 Y105 F6000 ; go to first probe point
M558 F500	 ; probe point quickly
G30              ; home Z by probing the bed
M558 F120	 ; probe point one more time very slowly
G30              ; home Z by probing the bed


G91             ; relative positioning
G1 H2 Z5 F500   ; lift Z relative to current position