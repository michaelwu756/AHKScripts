#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
Loop {
	If GetKeyState("ScrollLock", "T"){
		Suspend, Off
	} else {
		Suspend, On
	}
	Sleep, 50
}

F1::
{
	Process, exist, magnify.exe
    If errorlevel = 0
		return
	Send, #{Esc}
	return
}
F2::
{
	Process, exist, magnify.exe
    If errorlevel = 0
		return
	send #{-}
	return
}
F3::
{
	Process, exist, magnify.exe
    If errorlevel = 0
	{
        run magnify.exe
		sleep, 100
		return
	}
	send #{NumpadAdd}
	return
}


