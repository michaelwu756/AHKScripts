#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
counter = 0
name = WEATHERFORD INTERNATIONAL LIMITED
F1::
	Send, ^{c}
	Sleep, 200
	Send, !{Tab}
	Sleep, 200
	clipboard=%clipboard%
	if counter = 3
	{
		Send, ^{v}
		Sleep, 200
		Send, {Enter}
		Sleep, 200
		Send, 0
		Sleep, 700
		Send, {Enter}
		Sleep, 200
		Send, s
		Sleep, 200
		Send, {Enter}
		Sleep, 200
		Send, t
		Sleep, 200
		Send, {Enter}
		return
	}
	else
	{
		
		Send, ^{v}
		
	}
	Sleep, 200
	Send, {Enter}
	Sleep, 200
	Send, !{Tab}
	counter += 1
return
F2::
	Send, A
	Sleep, 200
	Send, {Enter}
	Sleep, 200
	Send, %name%
	Sleep, 200
	Send, {Enter}
	Sleep, 200
	Send, !{Tab}
	counter =0
return
F3::
	Send, W
	Sleep, 200
	Send, {Enter}
	Sleep, 200
	Send, %name%
	Sleep, 200
	Send, {Enter}
	Sleep, 200
	Send, !{Tab}
	counter =0
return
F4::
	Send, ^{c}
	Sleep, 2000
	name=%clipboard%
return
F5::
	Send, ^{c}
	Sleep, 200
	Send, !{Tab}
	Sleep, 200
	if counter = 0
	{
		name = %clipboard%
		Send, A
		Sleep, 200
		Send, {Enter}
		Sleep, 500
		Send, ^{v}
		Sleep, 200
		Send, {Enter}
	}
	else if counter = 2
	{
		Send, ^{v}
		Sleep, 200
		Send, {Enter}
		Sleep, 200
		Send, {Enter}
		Sleep, 200
		Send, 0
		Sleep, 700
		Send, {Enter}
		Sleep, 200
		Send, l
		Sleep, 200
		Send, {Enter}
		Sleep, 200
		Send, t
	}
	else
	{
		Send, ^{v}
	}
	Sleep, 200
	Send, {Enter}
	Sleep, 200
	Send, !{Tab}
	counter += 1
	if counter = 3
		counter = 0
return
F6::
	Send, !{Tab}
	Sleep, 200
	Send, %name%
	Sleep, 200
	Send, {Enter}
	Sleep, 200
	Send, !{Tab}
return