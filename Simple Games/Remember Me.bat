@echo off
set rmHS=0
:retry
title Re Me v1.5
set rmScore=0

echo Remember the number then enter into the answer section.
pause

:start
cls

if %rmScore% gtr %rmHS% (
	set /a rmHS = %rmScore%
)

title Re Me v1.5 - High Score: %rmHS% l Current Score: %rmScore%

set /a rI+=100
set /a rmRand=%random%%%%rI%

echo %rmRand%

timeout /t 1
cls

set /p rmAns=Answer: 

if %rmAns% == %rmRand% (
	set /a rmScore+=1
	goto start
) 
if %rmAns% neq %rmRand% (
	cls
	echo You Lost! Final Score: %rmScore%
	
)
	choice /m "Try again?"
	
	if %ERRORLEVEL% equ 1 (
		cls
		goto retry
	) else (
		exit
	)