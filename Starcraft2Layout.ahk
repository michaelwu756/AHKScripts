#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#UseHook
Loop {
	If GetKeyState("NumLock", "T"){
		Suspend, Off
	} else {
		Suspend, On
	}
	Sleep, 50
}
Space & o::
	Send {blind}{b down}
	Sleep 50
	Send {blind}{b up}
return
Space & e::
	Send {blind}{m down}
	Sleep 50
	Send {blind}{m up}
return
Space & u::
	Send {blind}{w down}
	Sleep 50
	Send {blind}{w up}
return
Space & i::
	Send {blind}{v down}
	Sleep 50
	Send {blind}{v up}
return
Space & y::
	Send {blind}{z down}
	Sleep 50
	Send {blind}{z up}
return
Space & a::
	Send {blind}{h down}
	Sleep 50
	Send {blind}{h up}
return
Space & '::
	Send {blind}{t down}
	Sleep 50
	Send {blind}{t up}
return
Space & ,::
	Send {blind}{n down}
	Sleep 50
	Send {blind}{n up}
return
Space & .::
	Send {blind}{s down}
	Sleep 50
	Send {blind}{s up}
return
Space & p::
	Send {blind}{- down}
	Sleep 50
	Send {blind}{- up}
return
Space & `::
	Send {blind}{\ down}
	Sleep 50
	Send {blind}{\ up}
return
Space::
	Send {blind}{space down}
	Sleep 50
	Send {blind}{space up}
return