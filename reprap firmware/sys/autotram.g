; disable all tools if one is active
if (state.currentTool != -1)
	T-1

;auto tramming
G30 P0 X0 Y110 Z-99999 ; probe near a leadscrew, half way along Y axis
G30 P1 X200 Y110 Z-99999 S2 ; probe near a leadscrew and calibrate 2 motors
