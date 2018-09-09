#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#NoTrayIcon
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DetectHiddenWindows, On
SetTitleMatchMode, 1
SetControlDelay -1
 
winTitleInstall = Parsec Setup
upgradeVeraCrypt = 0
 
; Wait for controller setup window
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