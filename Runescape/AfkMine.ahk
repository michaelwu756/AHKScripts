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
				Click, 643, 356
			}
			else
			{
				WinActivate, RuneScape
				Sleep, 200
				Click, 643, 356
				Sleep, 200
				WinMinimize, RuneScape
			}
			Random, DelayVariable, 20000, 40000
		}	
	} 
	Sleep, DelayVariable
}