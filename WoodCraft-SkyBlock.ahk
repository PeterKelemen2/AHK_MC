; Initialize the state variable
isHolding := false
timeIntervalMs := 250000

F6::
; Toggle the state
isHolding := !isHolding

if (isHolding) {
    ; If the state is true, hold down the left mouse button
    Send, {LButton down}
    SetTimer, ScrollDown, %timeIntervalMs%
} else {
    ; If the state is false, release the left mouse button
    Send, {LButton up}
    SetTimer, ScrollDown, Off
}
return

F7::
isHolding := !isHolding
if (isHolding) {
    Send, {LButton down}
} else {
    Send, {LButton up}
}
return

ScrollDown:
Send, {WheelDown}
return

XButton1::
Send, {T}
Sleep, 150
Send, /island home
Sleep, 50
Send, {Enter}
return

Xbutton2::
Send, {T}
Sleep, 150
Send, /spawn
Sleep, 50
Send, {Enter}
return