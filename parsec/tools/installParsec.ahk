#NoEnv
#NoTrayIcon
SendMode Input
SetWorkingDir %A_ScriptDir%
DetectHiddenWindows, On
SetTitleMatchMode, 1
SetControlDelay -1
 
winTitleInstall = Parsec Setup
 
; Wait for controller setup window and either
; not install (recommended) or click thru Windows Security dialog
WinWait, %winTitleInstall%, controller , 300
WinActivate

IfEqual, %1%, False
{
    ControlSend, ,{Tab}{Enter}, %winTitleInstall%, controller
}
Else
{
    ControlSend, ,{Tab}{Enter}
    ControlSend, ,{Tab}{Tab}{Enter}
}