M291 P"Please wait while the nozzle is being heated up" R"Loading PLA - Basicfil" T5 ; Display message
G10 S205 ; Set current tool temperature to 205C
M116 ; Wait for the temperatures to be reached
M291 P"Feeding filament..." R"Loading PLA - Basicfil" T5 ; Display new message
M83 ; Extruder to relative mode
G1 E50 F600 ; Feed 10mm of filament at 600mm/min
G1 E470 F900 ; Feed 470mm of filament at 3000mm/min
G1 E20 F300 ; Feed 20mm of filament at 300mm/min
G4 P1000 ; Wait one second
G1 E-10 F1200 ; Retract 10mm of filament at 1800mm/min
M400 ; Wait for moves to complete
M292 ; Hide the message
G10 S0 ; Turn off the heater again