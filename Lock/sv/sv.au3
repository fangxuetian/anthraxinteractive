#cs-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program; if not, write to  the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA 
#ce-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Include <Constants.au3>
#include <guiconstants.au3>
#include <misc.au3>
#include <em.au3>
#NoTrayIcon
global $locked = 0
Global $mp
Global $splash
global $upasswd = "6589q"
Global $taskman
global $toutpwd = 30
global $toutic = 3
global $time
global $tcount
opts(1)
msgbox(0,"Info","You can change the password at any time by right clicking the tray icon and click set password. to lock your Desktop right click the tray icon and click lock. To unlock your Desktop while it's locked press p.")
Opt("TrayMenuMode",1)	; Default tray menu items (Script Paused/Exit) will not be shown.
$lock = TrayCreateItem("Lock")
traycreateitem("")
$opts = TrayCreateItem("Options")
TrayCreateItem("")
$exit = traycreateitem("Exit")
TraySetState()
while 1
	if $locked = 1 then
		if WinActive("Massive Lock") = 0 Then
			WinActivate("Massive Lock")
		EndIf
		if WinExists("Massive Lock") = 0 Then
			$splash = 1
		EndIf
	EndIf
	if $locked = 1 then
		$taskman = ProcessExists("taskmgr.exe")
		if $taskman <> 0 Then
			ProcessClose($taskman)
		EndIf
	EndIf
	if $locked = 1 Then
		mousemove($mp[0],$mp[1],0)
	EndIf
	if $splash = 1 Then
		SplashTextOn("Massive Lock", "Times up! press p to continue", _
				@DesktopWidth, @DesktopHeight, Default, Default, 3, "Times New Roman", 72, 700)
		$splash = 0
	EndIf
	if $locked = 0 Then
		sleep(100)
		$tcount = $tcount + 100
		ConsoleWrite($tcount & " | " & (($time * 60) * 1000) & @lf)
	EndIf
	if $tcount >= (($time * 60) * 1000) and $locked = 0 Then
		_lock()
	EndIf
	$msg = TrayGetMsg()
	Select
		Case $msg = 0
			ContinueLoop
		case $msg = $lock
			if $locked = 0 then
				_lock()
			EndIf
		Case $msg = $exit
			_Exit()
		case $msg = $opts
			opts()
	EndSelect
WEnd
func _lock()
	$mp = MouseGetPos()
	SplashTextOn("Massive Lock","Times up! press p to continue",@DesktopWidth, @DesktopHeight, Default, Default, 3, "Times New Roman", 72, 700)
	$locked = 1
	hotkeyset("p","_Passwd")
	$splash = 1
	$tcount = 0
EndFunc
func _Passwd()
	SplashOff()
	hotkeyset("p")
	$pwin = guicreate("password",@DesktopWidth,@DesktopHeight)
	GUICtrlCreateLabel("Password",@DesktopWidth/2,(@DesktopHeight/2)-12)
	$p = GUICtrlCreateInput("",@DesktopWidth/2,(@DesktopHeight/2))
	$s = GUICtrlCreateButton("Submit",@DesktopWidth/2 - 20,(@DesktopHeight/2) + 20)
	$c = GUICtrlCreateButton("Cancel",@DesktopWidth/2 + 20,(@DesktopHeight/2) + 20)
	guisetstate()
	while 1
		if $locked = 1 Then
			winactive("password")
			ProcessClose("taskmgr.exe")
		EndIf
		$msg = GUIGetMsg()
		Switch $msg
			case $c
				$locked = 1
				_lock()
				GUIDelete($pwin)
				Return
			case $s
				$pp = GUICtrlRead($p)
				if $pp = $upasswd Then
					$locked = 0
					GUIDelete($pwin)
					Return
				EndIf
		EndSwitch
	WEnd
EndFunc
func _Exit()
	if verify() = 1 and $locked = 0 Then
		Exit
	EndIf
EndFunc
func opts($123456 = 0)
	if $123456 = 1 Then
		$time = inputbox("","input # of mins")
	Else
		if verify() = 1 and $locked = 0 then
			$time = inputbox("","input # of mins")
		EndIf
	EndIf
EndFunc
func verify()
	$up = InputBox("","Enter techer password","","*",Default,Default,Default,Default,30)
	if $up = $upasswd Then
		return 1
	Else
		return 0
	EndIf
EndFunc