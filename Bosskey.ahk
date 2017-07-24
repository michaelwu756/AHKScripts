#NoTrayIcon
#usehook on
!space::
IfWinExist, League of Legends (TM) Client
{
	WinActivate,  League of Legends (TM) Client
	Sleep 20
	click down right 1107, 710
	click up right 1107, 710
	WinHide
	SoundSet, +0, , mute, 1
	SoundSet, +0, , mute, 2
	SoundSet, +0, , mute, 3
	SoundSet, +0, , mute, 4
	SoundSet, +0, , mute, 5
	SoundSet, +0, , mute, 6
	SoundSet, +0, , mute, 7
	IfWinNotExist,   Chapter 9: The Confederation and the Constitution | APNotes.net
	{
		Run iexplore.exe "http://www.apnotes.net/ch9.html"
		Sleep 100
	}
	WinActivate,  Chapter 9: The Confederation and the Constitution | APNotes.net
	WinMaximize,  Chapter 9: The Confederation and the Constitution | APNotes.net
}
return
#space::
IfWinExist, League of Legends (TM) Client
{
	WinActivate,  League of Legends (TM) Client
	Sleep 20
	click down right 1275, 543
	click up  right 1275, 543
	WinHide
	SoundSet, +0, , mute, 1
	SoundSet, +0, , mute, 2
	SoundSet, +0, , mute, 3
	SoundSet, +0, , mute, 4
	SoundSet, +0, , mute, 5
	SoundSet, +0, , mute, 6
	SoundSet, +0, , mute, 7
	IfWinNotExist,   Chapter 9: The Confederation and the Constitution | APNotes.net
	{
		Run iexplore.exe "http://www.apnotes.net/ch9.html"
		Sleep 100
	}
	WinActivate,  Chapter 9: The Confederation and the Constitution | APNotes.net
	WinMaximize,  Chapter 9: The Confederation and the Constitution | APNotes.net
}
return
#usehook off
+space::
ifWinExist, League of Legends (TM) Client
{
	return
}
else
{
	WinShow,  League of Legends (TM) Client
	ifWinExist, League of Legends (TM) Client
	{
		SoundSet, +0, , mute, 1
		SoundSet, +0, , mute, 2
		SoundSet, +0, , mute, 3
		SoundSet, +0, , mute, 4
		SoundSet, +0, , mute, 5
		SoundSet, +0, , mute, 6
		SoundSet, +0, , mute, 7	
		WinActivate,  League of Legends (TM) Client
	}
}
return
