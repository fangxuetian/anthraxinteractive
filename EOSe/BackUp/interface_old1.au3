#include "controlhover.au3"
Func interface($username)
	local $Allow_Move
	$int = GUICreate("PixelSoft EOSe", @DesktopWidth, @DesktopHeight, 0, 0, 0x80000000 + 0x00800000)
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
				$exit = MsgBox(4, "Confirmination", "Are you sure you would like to leave PixelSoft EOSe?")
				Switch $exit
					Case 6
						Exit(1)
				EndSwitch
			Case $logoff
				GUIDelete($int)
				logonscreen()
				Return
			Case $usermanager
				$opt = InputBox("Input", "Possibilities:" & @CRLF & "1 - Create a New User" & @CRLF & " 2 - Delete a User" & @CRLF & "3 - Change/Add Own Password")
				If $opt = 1 Then
					$u = InputBox("Input", "Enter username of user to add.")
					$p = InputBox("Input", "Enter password of user to add.", "", "*")
					$pc = InputBox("Input", "Confirm password of user to add.", "", "*")
					If $p == $pc Then
						$mpc = "," & InputBox("Input", "Enter the master password. No repeating letters or errors will occur.")
						If $mpc = $mp Then
							$uplistl = sde(FileRead(sen($mp, "") & ".dll"), $mp)
							$uplistl = $uplistl & @LF & $u & "," & $p
							FileDelete(sen($mp, "") & ".dll")
							FileWrite(sen($mp, "") & ".dll", sen($uplistl, $mp))
							MsgBox(48, "Notice", "You must restart PixelSoft EOSe for changes to take effect.")
						Else
							MsgBox(0, "Error", "Invalid master password. Please try again.", 60)
						EndIf
					Else
						MsgBox(0, "Error", "Passwords do not match.", 60)
					EndIf
				ElseIf $opt = 2 Then
					$u = InputBox("Input", "Enter the username to delete.")
					$mpc = "," & InputBox("PixelSoft EOSe", "Enter the master password. No repeating letters or errors will occur.","","*")
					$c = MsgBox(4, "Confirmination", "Are you sure you want to delete the user " & $u & "?")
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
								MsgBox(0, "Error", "That user does not exist. Please try again.")
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
							MsgBox(48,"Notice","You need to restart PixelSoft EOSe for changes to take effect.")
						Else
							MsgBox(16, "Error", "Admin account cannot be deleted.")
						EndIf
					Else
						MsgBox(16, "Error", "Invalid master password. Please try again.")
					EndIf
				EndIf
		EndSwitch
		    ;If moving is enabled
   
    If $Allow_Move = 1 Then
       
        ;Check for a Hover
       
        $Over = _ControlHover(0, $Main_GUI)
        If $Over = 1 Then
            If @extended = $MoveMe Then
                GUICtrlSetBkColor(3, 0xFF0000)
            Else
                GUICtrlSetBkColor(3, 0xECE9D8)
            EndIf
            If @extended = $OK_BUT Then
                GUICtrlSetColor(4, 0xFF0000)
            Else
                GUICtrlSetColor(4, 0xECE9D8)
            EndIf
        EndIf
       
        ;Check for a Click
       
        $Click = _ControlHover(1, $Main_GUI)
        If $Click = 1 Then
            Select
                Case @extended = $MoveMe
                    MoveControl(3)
                Case @extended = $OK_BUT
                    MoveControl(4)
                Case @extended = $CANCEL_BUT
                    MoveControl(5)
            EndSelect
        EndIf
        $Check_Click = GUIGetCursorInfo()
        Select
            Case $Check_Click[4] = 3 And $Check_Click[3] = 1
                Text_Change(3)
            Case $Check_Click[4] = 4 And $Check_Click[3] = 1
                Text_Change(4)
            Case $Check_Click[4] = 5 And $Check_Click[3] = 1
                Text_Change(5)
        EndSelect
    EndIf
	WEnd
EndFunc   ;==>interface