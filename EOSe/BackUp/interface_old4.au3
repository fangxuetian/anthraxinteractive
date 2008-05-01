Func interface($username)
	GUICreate("Anthrax EOSe", @DesktopWidth, @DesktopHeight, 0, 0, 0x80000000 + 0x00800000)
	$exit = GUICtrlCreateButton("Exit", 5, @DesktopHeight - 35)
	$logoff = GUICtrlCreateButton("Logoff", 30, @DesktopHeight - 35)
	$usermanager = GUICtrlCreateButton("User manager", 69, @DesktopHeight - 35);74w25h
	
	Dim $umgui
	GUICtrlCreateLabel("Welcome, " & $username, 5, 35)
	GUISetState()
	While 1
		Switch GUIGetMsg()
			Case $exit
				Exit (1)
			Case $logoff
				GUIDelete()
				logonscreen()
				Return
			Case $usermanager
				$opt = InputBox("", "enter 1 to delete a user and 2 to make a new user")
				If $opt = 1 Then
					$u = InputBox("Enter Username", "Enter username of user to add")
					$p = InputBox("Enter password", "Enter password of user to add", "", "*")
					$pc = InputBox("Confirm password", "Confirm password of user to add", "", "*")
					If $p == $pc Then
						$mpc = "," & InputBox("Master Password", "Enter the master password. NO repeating letters or errors will occour")
						If $mpc = $mp Then
							$uplistl = sde(FileRead(sen($mp, "") & ".dll"), $mp)
							$uplistl = $uplistl & @LF & $u & "," & $p
							FileDelete(sen($mp, "") & ".dll")
							FileWrite(sen($mp, "") & ".dll", sen($uplistl, $mp))
							MsgBox(0, "Restart", "You must restart Anthrax EOSe for changes to become in effect")
						Else
							MsgBox(0, "Invalid master password", "Invalid master password", 60)
						EndIf
					Else
						MsgBox(0, "Passwords do not match", "Passwords do not match", 60)
					EndIf
				elseif $opt = 2
					$u = InputBox("Enter Username", "Enter username of user to delete")
					$p = InputBox("Enter password", "Enter password of user to delete", "", "*")
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
					MsgBox(0, "", "Invalid User/Pass")
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
					MsgBox(0, "", "Invalid User/Pass")
					GUIDelete($logon)
					LogonScreen()
					Return
				EndIf
		EndSwitch
	WEnd
EndFunc   ;==>interface