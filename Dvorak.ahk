;#NoTrayIcon
; Use Scroll Lock to control keyboard ("on" is Dvorak)
; and do not let Control, Alt, or Win modifiers act on Dvorak
Loop {
	If GetKeyState("ScrollLock", "T"){
		Suspend, Off
	} else {
		Suspend, On
	}
	Sleep, 50
}

; QWERTY to Dvorak mapping

[::-
]::=

'::q
,::w
.::e
p::r
y::t
f::y
g::u
c::i
r::o
l::p

/::[
=::]

;a::a
o::s
e::d
u::f
i::g
d::h
h::j
t::k
n::l
s::`;
-::'

`;::z
q::x
j::c
k::v
x::b
b::n
;m::m
w::,
v::.
z::/