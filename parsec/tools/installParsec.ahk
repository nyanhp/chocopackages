#NoEnv
#NoTrayIcon
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1
SetControlDelay -1
 
winTitleInstall = Parsec Setup

WinWait, %winTitleInstall%, controller , 300
WinActivate

ControlSend, ,{Tab}{Enter}, %winTitleInstall%, controller
