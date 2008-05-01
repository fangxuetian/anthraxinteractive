Func interface($username)
	$int = GUICreate("Anthrax EOSe", @DesktopWidth, @DesktopHeight, 0, 0, 0x80000000 + 0x00800000)
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
				$opt = InputBox("", "enter 2 to delete a user and 1 to make a new user")
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
				ElseIf $opt = 2
					$u = InputBox("Enter Username", "Enter username of user to delete")
					$mpc = "," & InputBox("Master Password", "Enter the master password. NO repeating letters or errors will occour")
					$c = MsgBox(4,"Are you sure?","Are you sure you want to delete the user " & $u & "?")
					if $c = 7
						ContinueCase
					EndIf
					if $mpc == $mp Then
						if $u <> "admim"
							dim $var
							dim $nuplist
							$uplistl = sde(FileRead(sen($mp, "") & ".dll"), $mp)
							$uplistl = StringSplit($uplistl,@lf)
							for $i = 1 to $uplistl[0]
								$tmp = StringSplit($uplistl[$i],",")
								if $tmp[1] = $u Then
									$var = $i
									ExitLoop
								EndIf
							Next
							if $var = "" Then
								MsgBox(0,"","That user does not exist")
								ContinueCase
							EndIf
							for $i = 1 to $uplistl[0]
								if $i <> $var then
									$nuplist = $nuplist & $uplistl[$i] & @lf
								EndIf
							Next
						Else
							MsgBox(16,"","Admin account cannot be deleted")
						EndIf
					Else
						MsgBox(16,"","The master password you entered was incorrect")
					EndIf
				EndIf
			EndSwitch
		WEnd
	EndFunc   ;==>interface