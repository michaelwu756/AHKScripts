#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DelayVariable = 50
Loop {
	If GetKeyState("ScrollLock", "T"){
		Suspend, Off
	} else {
		Suspend, On
	} 
	Sleep, DelayVariable
}
$4::
	Send, {Space down}
	Sleep, 50
	Send, {Space up}
	Sleep, 50
	Send, 4 
	Sleep, 50
return