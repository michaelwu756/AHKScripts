#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DelayVariable = 50
Loop {
	If GetKeyState("ScrollLock", "T"){
		IfWinExist, RuneScape
		{
			IfWinActive, RuneScape
			{
				Click 148, 572
				Sleep, 7000
				Send, {NumPad1 down}
				Sleep, 50
				Send, {NumPad1 up}
				Sleep, 2000
				Click 879, 188
				Sleep, 7000
				Click 740, 486
			}
			else
			{
				WinActivate, RuneScape
				Click 148, 572
				Sleep, 7000
				Send, {NumPad1 down}
				Sleep, 50
				Send, {NumPad1 up}
				Sleep, 2000
				Click 879, 188
				Sleep, 7000
				Click 740, 486
				Sleep, 200
				WinMinimize, RuneScape
			}
			Random, DelayVariable, 13000, 15000
		}	
	} 
	Sleep, DelayVariable
}