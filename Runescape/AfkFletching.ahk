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
				Click 993, 512
				Sleep, 2000
				Click 740, 486
			}
			else
			{
				WinActivate, RuneScape
				Click 993, 512
				Sleep, 2000
				Click 740, 486
				WinMinimize, RuneScape
			}
			Random, DelayVariable, 13000, 15000
		}	
	} 
	Sleep, DelayVariable
}