M502            ; Reset config to defaults.
M500            ; Save default config.
M190 S60        ; Heat bed.
G28             ; Home all.
G29 P1          ; Do automated probing of the bed.
G29 P3          ; AutoFill Missing Points - 2 Rounds.
G29 P3
G29 S1          ; Save UBL
G29 F 10.0      ; Set Fade Height.
G29 A           ; Activate the UBL.
M500            ; Save current setup.
M140 S0         ; Turn off bed.
M84             ; Disable motors.
M107            ; Turn off fan.
M300 S6000 P100 ; End Beep.
M300 S0 P100
M300 S6000 P100
