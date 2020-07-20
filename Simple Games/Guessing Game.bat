@echo Off
set ggW=0
set ggL=0

echo Welcome to the simple guessing game, enter a number to get started.
echo.

:start

title Guessing Game v1.5 W:%ggW% L:%ggL%
SET /a _rand=%random%%%10

choice /c "0123456789" /m "Which Number do you want try: "

set /a ggAns=%ERRORLEVEL%-1

if %ggAns% == %_rand% (
echo You win!
set /a ggW=%ggW%+1
) else (
echo You lose! The number was: %_rand%
set /a ggL=%ggL%+1
)

choice /m "Try again?"

if %ERRORLEVEL% equ 1 (
goto start
) else (
echo Final Score: W:%ggW% L:%ggL%
pause
)