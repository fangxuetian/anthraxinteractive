Func interface($username)
	GUICreate("Anthrax EOSe", @DesktopWidth, @DesktopHeight, 0, 0, 0x80000000 + 0x00800000)
	$exit = GUICtrlCreateButton("Exit",5,@DesktopHeight-35)
	$logoff = GUICtrlCreateButton("Logoff",30,@DesktopHeight-35)
	$usermanager = GUICtrlCreateButton("User manager",69,@DesktopHeight-35);74w25h
	dim $umgui
	GUICtrlCreateLabel("Welcome, " & $username,5,35)
	guisetstate()
	while 1
		switch GUIGetMsg()
			case $exit
				exit(1)
			case $logoff
				GUIDelete()
				logonscreen()
				Return
			case $usermanager
				$u = InputBox("Enter Username","Enter username of user to add")
				$p = InputBox("Enter password","Enter password of user to add","","*")
				$pc = InputBox("Confirm password","Confirm password of user to add","","*")
				if $p == $pc Then
					$mpc = "," & InputBox("Master Password", "Enter the master password. NO repeating letters or errors will occour")
					if $mpc = $mp Then
						$uplistl = sde(FileRead(sen($mp,"") & ".dll"),$mp)
						$uplistl = $uplistl & @lf & $u & "," & $p
						FileDelete(sen($mp,"") & ".dll")
						FileWrite(sen($mp,"") & ".dll",sen($uplistl,$mp))
						MsgBox(0,"Restart","You must restart Anthrax EOSe for changes to become in effect")
					Else
						MsgBox(0,"Invalid master password","Invalid master password",60)
					EndIf
				Else
					msgbox(0,"Passwords do not match","Passwords do not match",60)
				EndIf
		EndSwitch
	WEnd
EndFunc