#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
counter = 0
name = 
last =
F1::
	Send, ^{c}
	Sleep, 200
	Send, !{Tab}
	Sleep, 200
	clipboard=%clipboard%
	if counter = 0
	{
		Send, s
		Sleep, 200
		Send, {enter}
		Sleep, 300
		Send, c
		Sleep, 300
		Send, {enter}
		Sleep, 300
		Send, %name%
	}
	else if counter = 1
	{
		Send, ^{v}
	}
	else if counter = 2
	{
		Send, ^{v}
		Sleep, 200
		Send, {enter}
		Sleep, 200
		Send, t
	}	
	else if counter = 3
	{
		Send, ^{v}
	}
	else if counter = 4
	{
		Send, ^{v}
		Sleep, 200
		Send, {enter}
		Sleep, 200
		Send, 0
		Sleep, 200
		Send, {enter}
		Sleep, 600
		Send, {enter}
		Sleep, 300
		Send, s
		Sleep, 300	
		Send, {enter}
		Sleep, 300
		Send, {enter}
		Sleep, 300
		Send, {enter}
		Sleep, 300
		Send, {enter}
	}
	Sleep, 200
	Send, {Enter}
	Sleep, 200
	Send, !{Tab}
	counter += 1
	if counter = 5
		counter = 0
return
F2::
	Send, ^{c}
	Sleep, 200
	Send, !{Tab}
	Sleep, 300
	name = %clipboard%
	Send, s
	Sleep, 300
	Send, {enter}
	Sleep, 300
	Send, c
	Sleep, 300
	Send, {enter}
	Sleep, 300
	Send, %name%
	Sleep, 200
	Send, {Enter}
	Sleep, 200
	Send, !{Tab}
	counter = 1
return
F3::
	Send, !{Tab}
	Sleep, 200
	Send, %name%
	Sleep, 200
	Send, {Enter}
	Sleep, 200
	Send, !{Tab}
return
F4::
	Send, ^{a}
	Sleep, 300
	Send, ^{c}
	Sleep, 300
	last = %clipboard%
	Send, {tab}
	Sleep, 300
	Send, ^{c}
	Sleep, 300
	Send, %last%
	Sleep, 500
	Send, +{tab}
	Sleep, 500
	Send, ^{v}
return
	