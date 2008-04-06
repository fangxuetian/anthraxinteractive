#cs-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program; if not, write to  the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA 
#ce-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Include <Constants.au3>
#include <misc.au3>
#NoTrayIcon
global $locked
Global $mp
Global $splash
global $upasswd
Global $taskman
_passwdset()
msgbox(0,"Info","You can change the password at any time by right clicking the tray icon and click set password. to lock your Desktop right click the tray icon and click lock. To unlock your Desktop while it's locked press p.")
Opt("TrayMenuMode",1)	; Default tray menu items (Script Paused/Exit) will not be shown.
$about = TrayCreateItem("About")
traycreateitem("")
$lock = TrayCreateItem("Lock")
traycreateitem("")
$setp = traycreateitem("Set password")
traycreateitem("")
$exit = traycreateitem("Exit")
TraySetState()
while 1
	$ctrl = _IsPressed(11)
	$alt = _IsPressed(12) 
	$del = _IsPressed("2E")
	if $locked = 1 then
		if $ctrl = 1 Then
			$alt1 = _IsPressed(12)
			if $alt1 = 1 Then
				send("ghj")
				EndIf
		EndIf
		if $alt = 1 Then
			send("exd")
		EndIf
		if $del = 1 Then
			send("xd")
		EndIf
	EndIf
	if $locked = 1 then
		winsetstate("Start Menu","",@SW_HIDE)
	EndIf
	if $locked = 1 then
		$taskman = ProcessExists("taskmgr.exe")
		if $taskman <> 0 Then
			ProcessClose($taskman)
		EndIf
	EndIf
	if $locked = 1 Then
		mousemove($mp[0],$mp[1])
	EndIf
	if $splash = 1 Then
		SplashTextOn("", "locked. press p to bring up the password screen", _
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
				msgbox(0,"About","Publisher: MassiveSoft" & @CRLF & "Copyright 2007 MassiveSoft" & @CRLF & @CRLF & "This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.(at your option) any later version.This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details. You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA )")
			EndIf
	EndSelect
WEnd
func _lock()
	$mp = MouseGetPos()
	SplashTextOn("", "locked. press p to bring up the password screen", _
			@DesktopWidth, @DesktopHeight, Default, Default, 3, "Times New Roman", 72, 700)
	$locked = 1
	hotkeyset("p","_Passwd")
	$splash = 1
EndFunc
func _Passwd()
	hotkeyset("p")
	if $locked = 1 then
 		splashoff()
		$passwd = inputbox("password","enter the password","","*",-1,-1,Default,Default,60)
		if @error =  2 Then
			MsgBox(0,"timout expired","it has been 1 minute and you have not entered anything. Desktop will not be unlocked",10)
			$splash = 1
		ElseIf @error = 1 Then
			msgbox(0,"cancel button","the cancel button was pushed. Desktop will not be unlocked",10)
		Else
			if $passwd = $upasswd Then
				msgbox(0,"Correct","The password you entered was correct",10)
				SplashOff()
				$locked = 0
			Else
				msgbox(0,"Incorrect","The password you entered was incorrect",10)
				$splash = 1
			EndIf
		EndIf
	EndIf
	if $locked = 1 Then
		_lock()
	EndIf
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
		Else
			$b = 0
		EndIf
	WEnd
EndFunc