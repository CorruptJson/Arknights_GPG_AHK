; Arkights_GPG.ahk
; Script for hotkeys with Google Play Games
; Author: CorruptJson

#Requires AutoHotkey v2.0
#SingleInstance Force
SetControlDelay -1

MsgBox "Script is on!"


; Converts client screen percentages to window coordinates
ConvertPercent(x, y)
{
    newX := 0
    newY := 0
    width := 0
    height:= 0
    clientwidth := 0
    clientheight:= 0

    WinGetPos ,, &width, &height 
    WinGetClientPos ,, &clientwidth, &clientheight

    ; add left padding on width (half of the diff between client and window)
    newX := Round((x * clientwidth) + ((width - clientwidth) / 2)) 
    ; add top padding from window bar (31 pixels high when windowed, 0 if full screen)
    newY := Round((y * clientheight) + Min(31, height - clientheight))

    return Format("x{}, y{}", [newX, newY]*)
}



#HotIf WinActive("ahk_exe crosvm.exe") and WinActive("Arknights")
; Controls
x::ControlClick ConvertPercent(0.9338, 0.0735) ;pause button
z::ControlClick ConvertPercent(0.8593, 0.0735) ;fast forward button
c::ControlClick ConvertPercent(0.6757, 0.5833) ;skill button



#HotIf


