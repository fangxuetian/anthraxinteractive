Func LogonScreen()
	GUICreate("Logon Screen", @DesktopWidth, @DesktopHeight, 0, 0, 0x80000000 + 0x00800000)
	$logonbut = GUICtrlCreateButton("Logon",Int(@DesktopWidth / 2) - 125, Int(@DesktopHeight / 2)+30)
	$user  = GUICtrlCreateInput("",Int(@DesktopWidth / 2) - 125, Int(@DesktopHeight / 2)-30, 200, 25)
	$pass = GUICtrlCreateInput("",Int(@DesktopWidth / 2) - 125, Int(@DesktopHeight / 2),200,25)
	$passp= ""
	$userp = ""
	GUISetState()
	while 1
		$msg = GUIGetMsg()
		Switch $msg
			case $logonbut
				MsgBox(0,GUICtrlRead($user),GUICtrlRead($pass))
				GUIDelete()
				$userp = GUICtrlRead($user)
				$passp = GUICtrlRead($pass)
					MsgBox(0,$suser,$spass)
	dim $var
	for $i = 1 to $users[0]
		MsgBox(0,$suser,$users[$i])
		if $suser == $users[$i] Then
			$var = $i
			MsgBox(0,$suser,$users[$i] & "ll")
		EndIf
	Next
	MsgBox(0,"",$var)
	if $var = "" Then
		msgbox(0,"","Invalid User/Pass")
		logonscreen()
		Return
	EndIf
	MsgBox(0,$spass,$passes[$var])
	if $passes[$var] = "" Then
		interface($suser)
		Return
	elseif $passes[$var] = $spass Then
		interface($suser)
		Return
	Else
		msgbox(0,"","Invalid User/Pass")
		logonscreen()
		Return
	EndIf
		EndSwitch
	WEnd
EndFunc
Func logon($suser,$spass)
	MsgBox(0,$suser,$spass)
	dim $var
	for $i = 1 to $users[0]
		MsgBox(0,$suser,$users[$i])
		if $suser == $users[$i] Then
			$var = $i
			MsgBox(0,$suser,$users[$i] & "ll")
		EndIf
	Next
	MsgBox(0,"",$var)
	if $var = "" Then
		msgbox(0,"","Invalid User/Pass")
		logonscreen()
		Return
	EndIf
	MsgBox(0,$spass,$passes[$var])
	if $passes[$var] = "" Then
		interface($suser)
		Return
	elseif $passes[$var] = $spass Then
		interface($suser)
		Return
	Else
		msgbox(0,"","Invalid User/Pass")
		logonscreen()
		Return
	EndIf
EndFunc