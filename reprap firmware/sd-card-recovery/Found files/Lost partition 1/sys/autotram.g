; disable all tools if one is active
if (state.currentTool != -1)
	T-1

;auto tramming
G30 P0 X110 Y215 Z-99999 ; probe near a leadscrew, half way along Y axis
G30 P1 X215 Y5 Z-99999 ; probe near a leadscrew and calibrate 
G30 P2 X5 Y5 Z-99999 S3 ; probe point 2 near a leadscrew and calibrate 3 motors
