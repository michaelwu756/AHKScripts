#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

1::
	MouseGetPos,xpos,ypos,,,
	click right
	sleep, 75
	click relative 0, 90
	sleep, 75
	click %xpos%, %ypos%, 0
return
2::
	MouseGetPos,xpos,ypos,,,
	click right
	sleep, 75
	click relative 0, 60
	sleep, 75
	click %xpos%, %ypos%, 0
return
