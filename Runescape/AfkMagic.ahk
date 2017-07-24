#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DelayVariable = 250
Loop {
	If GetKeyState("ScrollLock", "T"){
		IfWinExist, RuneScape
		{
			IfWinActive, RuneScape
			{
				Click,996,524
			}
			else
			{
				WinActivate, RuneScape
			}
		}
		
	}
	Sleep, DelayVariable
}