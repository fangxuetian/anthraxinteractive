Func LogonScreen()
	$logon = GUICreate("Logon Screen", @DesktopWidth, @DesktopHeight, 0, 0, 0x80000000 + 0x00800000)
	$logonbut = GUICtrlCreateButton("Logon", Int(@DesktopWidth / 2) - 125, Int(@DesktopHeight / 2) + 30)
	$user = GUICtrlCreateInput("", Int(@DesktopWidth / 2) - 125, Int(@DesktopHeight / 2) - 30, 200, 25)
	$pass = GUICtrlCreateInput("", Int(@DesktopWidth / 2) - 125, Int(@DesktopHeight / 2), 200, 25)
	GUICtrlSetData($user, "Admin")
	$passp = ""
	$userp = ""
	GUISetState()
	While 1
		$msg = GUIGetMsg()
		Switch $msg
			Case $logonbut
				$suser = GUICtrlRead($user)
				$spass = GUICtrlRead($pass)
				GUIDelete()
				MsgBox(0,"",@error)
				MsgBox(0, $suser, $spass)
				Dim $var
				For $i = 1 To $users[0]
					MsgBox(0, $suser, $users[$i])
					If $suser = $users[$i] Then
						$var = $i
						MsgBox(0, $suser, $users[$i] & " ll")
						ExitLoop
					EndIf
				Next
				MsgBox(0, "", $var)
				If $var = "" Then
					MsgBox(0, "PixelSoft EOSe", "Invalid User/Pass")
					GUIDelete($logon)
					LogonScreen()
					Return
				EndIf
				MsgBox(0, $spass, $passes[$var])
				If $passes[$var] = "" Then
					interface($suser)
					Return
				ElseIf $passes[$var] == $spass Then
					interface($suser)
					Return
				Else
					MsgBox(0, "PixelSoft EOSe", "Invalid User/Pass")
					GUIDelete($logon)
					LogonScreen()
					Return
				EndIf
		EndSwitch
	WEnd
EndFunc   ;==>LogonScreen