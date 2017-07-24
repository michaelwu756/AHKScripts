#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#UseHook
Loop {
	If GetKeyState("ScrollLock", "T"){
		Suspend, Off
	} else {
		Suspend, On
	}
	Sleep, 50
}
q::'
w::,
e::.
r::p
t::y
y::f
u::g
i::c
o::r
p::l

a::a
s::o
d::e
f::u
g::i
h::d
j::h
k::t
l::n
`;::s
'::-

z::;
x::q
c::j
v::k
b::x
n::b
m::m
,::w
.::v
/::z

[::/
]::=
-::[
=::]
Space & s::
	Send {blind}{b down}
	Sleep 50
	Send {blind}{b up}
return
Space & d::
	Send {blind}{m down}
	Sleep 50
	Send {blind}{m up}
return
Space & f::
	Send {blind}{w down}
	Sleep 50
	Send {blind}{w up}
return
Space & g::
	Send {blind}{v down}
	Sleep 50
	Send {blind}{v up}
return
Space & t::
	Send {blind}{z down}
	Sleep 50
	Send {blind}{z up}
return
Space & a::
	Send {blind}{h down}
	Sleep 50
	Send {blind}{h up}
return
Space & q::
	Send {blind}{t down}
	Sleep 50
	Send {blind}{t up}
return
Space & w::
	Send {blind}{n down}
	Sleep 50
	Send {blind}{n up}
return
Space & e::
	Send {blind}{s down}
	Sleep 50
	Send {blind}{s up}
return
Space & r::
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