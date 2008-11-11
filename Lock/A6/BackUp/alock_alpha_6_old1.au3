#Include <Constants.au3>
#include <guiconstants.au3>
#include <misc.au3>
#include <em.au3>
#NoTrayIcon
global $locked
Global $mp
Global $splash
global $upasswd
Global $taskman
global $toutpwd = 30
global $toutic = 3
if $cmdline[0] <> 0 Then
	if $cmdline[1] = "-lock" Then
		$upasswd = $cmdline[2]
		_lock()
	EndIf
Else
startup()
_passwdset()
endif
msgbox(0,"Info","You can change the password at any time by right clicking the tray icon and click set password. to lock your Desktop right click the tray icon and click lock. To unlock your Desktop while it's locked press p.")
Opt("TrayMenuMode",1)	; Default tray menu items (Script Paused/Exit) will not be shown.
$about = TrayCreateItem("About")
traycreateitem("")
$lock = TrayCreateItem("Lock")
traycreateitem("")
$setp = traycreateitem("Set password")
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
		SplashTextOn("Massive Lock", "locked. press p to bring up the password screen", _
				@DesktopWidth, @DesktopHeight, Default, Default, 3, "Times New Roman", 72, 700)
		$splash = 0
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
			if $locked = 0 Then
				exit
			EndIf
		Case $msg = $setp
			if $locked = 0 then
				_passwdset()
			EndIf
		case $msg = $about
			if $locked = 0 Then
				msgbox(0,"About","Publisher: PixelSoft" & @CRLF & "Copyright 2007 MassiveSoft" & @CRLF & @CRLF & "This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.(at your option) any later version.This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details. You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA )")
			EndIf
		case $msg = $opts
			opts()
	EndSelect
WEnd
func _lock()
	$mp = MouseGetPos()
	SplashTextOn("PixelSoft Lock", "locked. press p to bring up the password screen",@DesktopWidth, @DesktopHeight, Default, Default, 3, "Times New Roman", 72, 700)
	$locked = 1
	hotkeyset("p","_Passwd")
	$splash = 1
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
	if $locked = 1 Then
		Exit
	EndIf
EndFunc
func _passwdset()
	$b = 1
	while $b = 1
		$upasswd = inputbox("Password","Please set the password. You will need this password to unlock youre desktop.","","*")
		$vp = inputbox("Verify","Please verify the password.","","*")
		if $upasswd <> $vp Then
			msgbox(0,"Don't match","The password don't match")
		elseif $upasswd = "" Then
			msgbox(0,"","the pasword can not be blank")
		Else
			$b = 0
		EndIf
	WEnd
EndFunc
func opts()
EndFunc
func startup()
EndFunc