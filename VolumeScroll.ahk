#NoEnv
#Persistent, On
#SingleInstance, Force
#WinActivateForce

DetectHiddenWindows, On
SetTitleMatchMode, 2

MouseIsOver(WinTitle)
{
	MouseGetPos, xpos, ypos, Win
	return WinExist(WinTitle . " ahk_id " . Win) or ypos < 15
}

#If MouseIsOver("ahk_class Shell_TrayWnd")
	WheelUp::Send, {Volume_Up}
	WheelDown::Send, {Volume_Down}
#If

#WheelUp::Send, {Volume_Up}
#WheelDown::Send, {Volume_Down}
