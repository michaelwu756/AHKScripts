﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
delay = 2000
counter = 0
F1::
Loop, read, out.txt
{
	If GetKeyState("CapsLock", "T")
		pause, on
	else
		pause, off
	if counter = 0
	{
		Send, s
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, c
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, %A_LoopReadLine%
	}
	else if counter = 1
	{
		Send, %A_LoopReadLine%
	}
	else if counter = 2
	{
		Send, %A_LoopReadLine%
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, t
	}	
	else if counter = 3
	{
		Send, %A_LoopReadLine%
	}
	else if counter = 4
	{
		Send, %A_LoopReadLine%
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, 0
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, s
		Sleep, %delay%	
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
		Sleep, %delay%
		Send, {enter}
	}
	Sleep, %delay%
	Send, {Enter}
	Sleep, %delay%
	counter += 1
	if counter = 5
		counter = 0
}
return
F2::
	listvars
return
