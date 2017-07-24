#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DelayVariable = 50
Loop {
	If GetKeyState("ScrollLock", "T"){
		Send, {a down}
				Sleep, 50
		Send, {a up}
		Send, {o down}
				Sleep, 50
		Send, {o up}
	} 
	Sleep, DelayVariable
}