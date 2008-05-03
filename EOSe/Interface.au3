Func interface($username)
	$int = GUICreate("Anthrax EOSe", @DesktopWidth, @DesktopHeight, 0, 0, 0x80000000 + 0x00800000)
	$exit = GUICtrlCreateButton("Exit", 5, @DesktopHeight - 35)
	$logoff = GUICtrlCreateButton("Logoff", 30, @DesktopHeight - 35)
	$usermanager = GUICtrlCreateButton("User manager", 68, @DesktopHeight - 35);74w25h
	$custon = GUICtrlCreateButton("Addons",142,@DesktopHeight - 35)
	$bg = 0xee0000
	GUISetBkColor($bg,$int)
	Dim $umgui
	$welcome = GUICtrlCreateLabel("Welcome, " & $username,5,35,@DesktopHeight - 5,25)
	GUICtrlSetFont($welcome,18)
	GUISetState()
	While 1
		Switch GUIGetMsg()
			Case $exit
				Exit (1)
			Case $logoff
				GUIDelete($int)
				logonscreen()
				Return
			Case $usermanager
				$opt = InputBox("", "enter 2 to delete a user, 1 to make a new user, and 3 to give yourself/change yourt own password")
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
							MsgBox(48, "Restart", "You must restart Anthrax EOSe for changes to become in effect")
						Else
							MsgBox(0, "Invalid master password", "Invalid master password", 60)
						EndIf
					Else
						MsgBox(0, "Passwords do not match", "Passwords do not match", 60)
					EndIf
				ElseIf $opt = 2 Then
					$u = InputBox("Enter Username", "Enter username of user to delete")
					$mpc = "," & InputBox("Anthrax EOSe", "Enter the master password. No repeating letters or errors will occur.","","*")
					$c = MsgBox(4, "Are you sure?", "Are you sure you want to delete the user " & $u & "?")
					If $c = 7 Then
						ContinueCase
					EndIf
					If $mpc == $mp Then
						If $u <> "admim"  Then
							Dim $var
							Dim $nuplist
							$uplistl = sde(FileRead(sen($mp, "") & ".dll"), $mp)
							$uplistl = StringSplit($uplistl, @LF)
							For $i = 1 To $uplistl[0]
								$tmp = StringSplit($uplistl[$i], ",")
								If $tmp[1] = $u Then
									$var = $i
									ExitLoop
								EndIf
							Next
							If $var = "" Then
								MsgBox(0, "", "That user does not exist")
								ContinueCase
							EndIf
							For $i = 1 To $uplistl[0]
								If $i <> $var and $i > 1 Then
									$nuplist = $nuplist & @lf & $uplistl[$i]
								Elseif $i <> $var then
									$nuplist = $nuplist & $uplistl[$i]
								EndIf
							Next
							FileDelete(sen($mp, "") & ".dll")
							FileWrite(sen($mp, "") & ".dll", sen($nuplist, $mp))
							MsgBox(48,"Restart","You need to restart EOSe for changes to take effect")
						Else
							MsgBox(16, "", "Admin account cannot be deleted")
						EndIf
					Else
						MsgBox(16, "", "The master password you entered was incorrect")
					EndIf
				EndIf
		EndSwitch
	WEnd
EndFunc   ;==>interface