#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
delay = 3500
state = 0
name =
dateBuy = 
dateSell = 
priceSell =
priceBuy =
wash = 
F1::
Loop, read, out2012.txt
{
	If GetKeyState("CapsLock", "T")
		pause, on
	else
		pause, off
	if state = 0
	{
		line = %A_LoopReadLine%
		if line = W
		{
			state = 2
		}
		else
		{
			name = %A_LoopReadLine%
			state = 1
		}
	}
	else if state = 1
	{
		counter = 0
		Loop, Parse, A_LoopReadLine, %A_Space%
		{
			if counter = 0
				dateBuy = %A_LoopField%
			else if counter = 1
				dateSell = %A_LoopField%
			else if counter = 2
				priceSell = %A_LoopField%
			else if counter = 3
				priceBuy = %A_LoopField%
			counter += 1
		}
		Send, {enter}
		Sleep, %delay%
		Send, {space}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, %name%
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, %dateBuy%
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, %dateSell%
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, s
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, t
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, s
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, %priceSell%
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, %priceBuy%
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%	
		state = 0
	}
	else if state = 2
	{
		name = %A_LoopReadLine%
		state = 3
	}
	else if state = 3
	{
		counter = 0
		Loop, Parse, A_LoopReadLine, %A_Space%
		{
			if counter = 0
				dateBuy = %A_LoopField%
			else if counter = 1
				dateSell = %A_LoopField%
			else if counter = 2
				priceSell = %A_LoopField%
			else if counter = 3
				priceBuy = %A_LoopField%
			else if counter = 4
				wash = %A_LoopField%
			counter += 1
		}
		Send, {enter}
		Sleep, %delay%
		Send, {space}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, %name%
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, %dateBuy%
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, %dateSell%
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, w
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, t
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, s
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, %priceSell%
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, %priceBuy%
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, %wash%
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		state = 0
	}
}
return
F2::
	Send, ^{c}
	Sleep, 200
	Send, !{tab}
	Sleep, 200
	Send, ^{v}
	Sleep, 200
	Send, {enter}
	Sleep, 200
	Send, !{tab}
	Sleep, 500
	Send, {PgDn}
return
F3::
	listvars
return
