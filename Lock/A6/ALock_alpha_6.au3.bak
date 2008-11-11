#include <Constants.au3>
#include <guiconstants.au3>
#include <misc.au3>
#include <em.au3>
#NoTrayIcon
Global $locked
Global $mp
Global $splash
Global $upasswd
Global $taskman
Global $toutpwd = 30
Global $toutic = 3
If $cmdline[0] <> 0 Then
	If $cmdline[1] = "-lock" Then
		$upasswd = $cmdline[2]
		_lock()
	EndIf
Else
	startup()
	_passwdset()
EndIf
MsgBox(0, "Info", "You can change the password at any time by right clicking the tray icon and click set password. to lock your Desktop right click the tray icon and click lock. To unlock your Desktop while it's locked press p.")
Opt("TrayMenuMode", 1) ; Default tray menu items (Script Paused/Exit) will not be shown.
$about = TrayCreateItem("About")
TrayCreateItem("")
$lock = TrayCreateItem("Lock")
TrayCreateItem("")
$setp = TrayCreateItem("Set password")
TrayCreateItem("")
$opts = TrayCreateItem("Options")
TrayCreateItem("")
$exit = TrayCreateItem("Exit")
TraySetState()
While 1
	If $locked = 1 Then
		If WinActive("Massive Lock") = 0 Then
			WinActivate("Massive Lock")
		EndIf
	EndIf
	If $locked = 1 Then
		$taskman = ProcessExists("taskmgr.exe")
		If $taskman <> 0 Then
			ProcessClose($taskman)
		EndIf
	EndIf
	If $locked = 1 Then
		MouseMove($mp[0], $mp[1], 0)
	EndIf
	If $splash = 1 Then
		SplashTextOn("Massive Lock", "locked. press p to bring up the password screen", _
				@DesktopWidth, @DesktopHeight, Default, Default, 3, "Times New Roman", 72, 700)
		$splash = 0
	EndIf
	$msg = TrayGetMsg()
	Select
		Case $msg = 0
			ContinueLoop
		Case $msg = $lock
			If $locked = 0 Then
				_lock()
			EndIf
		Case $msg = $exit
			If $locked = 0 Then
				Exit
			EndIf
		Case $msg = $setp
			If $locked = 0 Then
				_passwdset()
			EndIf
		Case $msg = $about
			If $locked = 0 Then
				MsgBox(0, "About", "Publisher: Anthrax" & @CRLF & "Copyright 2007 MassiveSoft" & @CRLF & @CRLF & "This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.(at your option) any later version.This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details. You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA )")
			EndIf
		Case $msg = $opts
			opts()
	EndSelect
WEnd
Func _lock()
	$mp = MouseGetPos()
	SplashTextOn("Anthrax Lock", "locked. press p to bring up the password screen", @DesktopWidth, @DesktopHeight, Default, Default, 3, "Times New Roman", 72, 700)
	$locked = 1
	HotKeySet("p", "_Passwd")
	$splash = 1
EndFunc   ;==>_lock
Func _Passwd()
	SplashOff()
	HotKeySet("p")
	$pwin = GUICreate("password", @DesktopWidth, @DesktopHeight)
	GUICtrlCreateLabel("Password", @DesktopWidth / 2, (@DesktopHeight / 2) - 12)
	$p = GUICtrlCreateInput("", @DesktopWidth / 2, (@DesktopHeight / 2))
	$s = GUICtrlCreateButton("Submit", @DesktopWidth / 2 - 20, (@DesktopHeight / 2) + 20)
	$c = GUICtrlCreateButton("Cancel", @DesktopWidth / 2 + 20, (@DesktopHeight / 2) + 20)
	GUISetState()
	While 1
		If $locked = 1 Then
			WinActive("password")
			ProcessClose("taskmgr.exe")
		EndIf
		$msg = GUIGetMsg()
		Switch $msg
			Case $c
				$locked = 1
				_lock()
				GUIDelete($pwin)
				Return
			Case $s
				$pp = GUICtrlRead($p)
				If $pp = $upasswd Then
					$locked = 0
					GUIDelete($pwin)
					Return
				EndIf
		EndSwitch
	WEnd
EndFunc   ;==>_Passwd
Func _Exit()
	If $locked = 1 Then
		Exit
	EndIf
EndFunc   ;==>_Exit
Func _passwdset()
	$b = 1
	While $b = 1
		$upasswd = InputBox("Password", "Please set the password. You will need this password to unlock youre desktop.", "", "*")
		$vp = InputBox("Verify", "Please verify the password.", "", "*")
		If $upasswd <> $vp Then
			MsgBox(0, "Don't match", "The password don't match")
		ElseIf $upasswd = "" Then
			MsgBox(0, "", "the pasword can not be blank")
		Else
			$b = 0
		EndIf
	WEnd
EndFunc   ;==>_passwdset
Func opts()
EndFunc   ;==>opts
Func startup()
EndFunc   ;==>startup