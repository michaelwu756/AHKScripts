#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode, Mouse, Screen
DelayVariable = 50
NewWorld = 0
Loop {
	If GetKeyState("ScrollLock", "T"){
		IfWinExist, Trove
		{
			IfWinActive, Trove
			{
				If NewWorld<20
				{
					BlockInput, On
					Sleep, 500
					Send, {Enter down}
					Sleep, 50
					Send, {Enter up}
					Sleep, 50
					Send, /respawn
					Sleep, 50
					Send, {Enter down}
					Sleep, 50
					Send, {Enter up}
					Sleep, 1000
					Send, {u down}
					Sleep, 50
					Send, {u up}
					Sleep, 4000
					MouseMove, -500, 60, 0, r
					Sleep, 1000
					Send, {u down}
					Sleep, 50
					Send, {u up}
					Sleep, 50
					MouseMove, 500, -60, 0, r
					Sleep, 500
					BlockInput, Off
					NewWorld++
				}
				else
				{
					BlockInput, On
					Sleep, 500
					Send, {g down}
					Sleep, 50
					Send, {g up}
					Sleep, 500
					Click, 450, 312
					Sleep, 20000
					Send, {u down}
					Sleep, 50
					Send, {u up}
					Sleep, 500
					BlockInput, Off
					NewWorld = 0
				}
			}
			Random, DelayVariable, 15000, 20000
		}	
	} 
	Sleep, DelayVariable
}