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
				Click, 740, 486
				Sleep, 1000
				Send, {NumPad2 down}
				Sleep, 50
				Send, {NumPad2 up}
				Sleep, 1000
				Click 993, 512
				Sleep, 200
				Click 997, 476
				Sleep, 1000
				Click 740, 486
			}
			else
			{
				WinActivate, RuneScape
				Click, 740, 486
				Sleep, 1000
				Send, {NumPad2 down}
				Sleep, 50
				Send, {NumPad2 up}
				Sleep, 1000
				Click 993, 512
				Sleep, 200
				Click 997, 476
				Sleep, 1000
				Click 740, 486
				Sleep, 200
				WinMinimize, RuneScape
			}
			Random, DelayVariable, 16000, 20000
		}	
	} 
	Sleep, DelayVariable
}