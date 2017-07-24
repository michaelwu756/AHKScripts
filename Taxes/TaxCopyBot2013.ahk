#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
shortDelay = 1000
delay = 1000
state = 0
name =
dateBuy = 
dateSell = 
priceSell =
priceBuy =
wash = 
F1::
Loop, read, out2013.txt
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
				dateSell = %A_LoopField%
			else if counter = 1
				dateBuy= %A_LoopField%
			else if counter = 2
				priceSell = %A_LoopField%
			else if counter = 3
				priceBuy = %A_LoopField%
			counter += 1
		}
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Space}
		Sleep, %delay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, s
		Sleep, %delay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, %dateSell%
		Sleep, %delay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, %dateBuy%
		Sleep, %delay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, %priceSell%
		Sleep, %delay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, %priceBuy%
		Sleep, %delay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, %name%
		Sleep, %delay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
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
				dateSell = %A_LoopField%
			else if counter = 1
				dateBuy = %A_LoopField%
			else if counter = 2
				priceSell = %A_LoopField%
			else if counter = 3
				priceBuy = %A_LoopField%
			else if counter = 4
				wash = %A_LoopField%
			counter += 1
		}
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Space}
		Sleep, %delay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, w
		Sleep, %delay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, %dateSell%
		Sleep, %delay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, %dateBuy%
		Sleep, %delay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, %priceSell%
		Sleep, %delay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, %priceBuy%
		Sleep, %delay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, %wash%
		Sleep, %delay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, %name%
		Sleep, %delay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
		Send, {Enter}
		Sleep, %shortDelay%
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
	Send, {Enter}
	Sleep, 200
	Send, !{tab}
	Sleep, 500
	Send, {PgDn}
return
F3::
Loop, read, out2013.txt
{
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
				dateSell = %A_LoopField%
			else if counter = 1
				dateBuy= %A_LoopField%
			else if counter = 2
				priceSell = %A_LoopField%
			else if counter = 3
				priceBuy = %A_LoopField%
			counter += 1
		}		
		KeyWait, Shift, D
		Send, s		
		KeyWait, Shift, D
		Send, %dateSell%		
		KeyWait, Shift, D
		Send, %dateBuy%		
		KeyWait, Shift, D
		Send, %priceSell%		
		KeyWait, Shift, D
		Send, %priceBuy%
		KeyWait, Shift, D
		Send, %name%
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
				dateSell = %A_LoopField%
			else if counter = 1
				dateBuy = %A_LoopField%
			else if counter = 2
				priceSell = %A_LoopField%
			else if counter = 3
				priceBuy = %A_LoopField%
			else if counter = 4
				wash = %A_LoopField%
			counter += 1
		}
		
		KeyWait, Shift, D
		Send, w
		KeyWait, Shift, D
		Send, %dateSell%
		KeyWait, Shift, D
		Send, %dateBuy%
		KeyWait, Shift, D
		Send, %priceSell%
		KeyWait, Shift, D
		Send, %priceBuy%
		KeyWait, Shift, D
		Send, %wash%
		KeyWait, Shift, D
		Send, %name%
		state = 0
	}
}
return