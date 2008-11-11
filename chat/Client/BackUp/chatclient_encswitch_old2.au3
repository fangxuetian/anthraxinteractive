#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Compression=4
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <GUIConstants.au3>
#include <misc.au3>
#include <GUIEdit.au3>
#include <ie.au3>
#include <String.au3>
#include <ButtonConstants.au3>
#include <em.au3>
TCPStartup()
Global $pass
Global $nickid
Global $adminenabled
Global $supafastdebug
Global $isadminbutenabled = 0
Global $useenctxt = 0
Dim $dea
If FileRead("file.txt") = 1 Then
	$supafastdebug = 1
	FileWrite("file.txt", "0")
EndIf
Dim $ovr
Dim $ie
$ie = _IECreateEmbedded()
$s = TCPConnect(InputBox("Enter IP", "Enter IP", "72.197.230.119"), InputBox("Enter port", "enter port", 42775))
$nick = InputBox("Nick", "Enter your nick", "Anonymous" & Random(100, 999, 1))
#Region ### START Koda GUI section ### Form=c:\users\maverick\documents\form1.kxf
$Form1_1 = GUICreate("Form1", 679, 568, 187, 140)
$Input1 = GUICtrlCreateInput("", 8, 456, 465, 21)
$Button1 = GUICtrlCreateButton("Send", 568, 456, 97, 25, $BS_DEFPUSHBUTTON)
GUICtrlCreateObj($ie, 8, 8, 665, 425)
$Button2 = GUICtrlCreateButton("Admin login", 16, 488, 105, 25, 0)
$Button3 = GUICtrlCreateButton("Clear", 480, 456, 81, 25, 0)
$Button4 = GUICtrlCreateButton("Admin Message", 136, 488, 105, 25, 0)
$Button5 = GUICtrlCreateButton("Raw2Client", 256, 488, 105, 25, 0)
$Button6 = GUICtrlCreateButton("Enable\Disable cons", 376, 488, 113, 25, 0)
$Button7 = GUICtrlCreateButton("Change password", 504, 488, 105, 25, 0)
$Checkbox1 = GUICtrlCreateCheckbox("Connections enabled/disabled", 8, 544, 161, 17)
$Button8 = GUICtrlCreateButton("Raw2Server", 16, 520, 105, 25, 0)
#EndRegion ### END Koda GUI section ###
hidec($Button2)
hidec($Button4)
hidec($Button5)
hidec($Button6)
hidec($Button7)
hidec($Button8)
hidec($Checkbox1)
GUISetState(@SW_SHOW)
_IENavigate($ie, "About:blank")
TCPSend($s, "constat")
$data = ""
Do
	$data = TCPRecv($s, 2048)
Until $data = "y" Or $data = "n"
cwri("constat " & $data)
If $data = "n" Then
	Exit
EndIf
If $data = "y" Then
	GUICtrlSetState($Checkbox1, $GUI_CHECKED)
EndIf
TCPSend($s, "reqpass")
$data = ""
Do
	$data = TCPRecv($s, 2048)
	cwri($data)
Until $data = "yes" Or $data = "no"
If $data = "yes" Then
	$pass = InputBox("password", "enter password")
EndIf
TCPSend($s, "JOIN|" & $nick & "|" & $pass)
$data = ""
Do
	$data = TCPRecv($s, 2048)
	cwri($data)
Until $data <> ""
$nickid = $data
If $data = "INCPASS" Then
	TCPCloseSocket($s)
	MsgBox(0, "Incorrect password", "You entered a incorrect password")
	Exit (6)
EndIf
GUISetState(@SW_SHOW)
While 1
	If $adminenabled = 1 And $isadminbutenabled = 0 Then
		showc($Button4)
		showc($Button5)
		showc($Button6)
		showc($Button7)
		showc($Button8)
		showc($Checkbox1, 1)
		$isadminbutenabled = 1
	EndIf
	$iVisibleHeight = $ie.document.body.clientHeight
	$ie.document.parentWindow.scrollBy(0, $iVisibleHeight)
	$data = ""
	$data = TCPRecv($s, 2048)
	If @error Then Exit
	If $data <> "" Then
		cwri($data)
	EndIf
	If $data <> "" Then
		$data = StringSplit($data, @LF)
		cwri($data[0])
		For $i = 1 To $data[0]
			$temp = StringSplit($data[$i], "|")
			cwri("Data $i " & $data[$i])
			If $temp[0] > 1 Then
				cwri($temp[1])
				If $temp[1] = "sendmsg" Then
					out($temp[2] & " : " & $temp[3])
				ElseIf $temp[1] = "exit" And $temp[2] = $nick Then
					TCPCloseSocket($s)
					GUIDelete()
					MsgBox(0, $temp[3], $temp[4])
					Exit (5)
				EndIf
			ElseIf $temp[1] = "condis" Then
				GUICtrlSetState($Checkbox1, $GUI_UNCHECKED)
			ElseIf $temp[1] = "conena" Then
				GUICtrlSetState($Checkbox1, $GUI_CHECKED)
			Else
				out($temp[1])
			EndIf
		Next
	EndIf
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Button1
			_send()
		Case $Button2
			$adminuser = InputBox("", "USER")
			$adminpass = InputBox("", "PASS", "", "*")
			TCPSend($s, "adminlogin|" & $adminuser & "|" & $adminpass)
			Do
				$data = TCPRecv($s, 2048)
			Until $data <> ""
			MsgBox(0, $data, $data)
			If $data = "yesadmin" Then
				$adminenabled = 1
			EndIf
		Case $Button3
			$dea = ""
			_IEBodyWriteHTML($ie, "Nothing in console")
		Case $Button4
			$msgi = InputBox("Message", "Enter admin message")
			TCPSend($s, "RAW|Admin : " & $msgi)
		Case $Button5
			$raw = InputBox("RAW", "RAW")
			TCPSend($s, "RAW|" & $raw)
		Case $Button6
			TCPSend($s, "conendi")
		Case $Button7
			$npass = InputBox("Password", "Please enter the New password")
			TCPSend($s, "cpass|" & $npass)
		Case $Button8
			$rawserver = InputBox("RAW", "this will be send to the server raw.")
			TCPSend($s, $rawserver)
	EndSwitch
	$iVisibleHeight = $ie.document.body.clientHeight
	$ie.document.parentWindow.scrollBy(0, $iVisibleHeight)
WEnd
Func out($input)
	$dea = $dea & "<br>" & $input
	$dea = StringReplace($dea, ":)", '<img src="' & @ScriptDir & '/smileys/1.gif"></img>')
	$dea = StringReplace($dea, ":(", '<img src="' & @ScriptDir & '/smileys/2.gif"></img>')
	$dea = StringReplace($dea, ";)", '<img src="' & @ScriptDir & '/smileys/3.gif"></img>')
	$dea = StringReplace($dea, ":D", '<img src="' & @ScriptDir & '/smileys/4.gif"></img>')
	$dea = StringReplace($dea, "(:<", '<img src="' & @ScriptDir & 'smileys/5.gif"></img>')
	$dea = StringReplace($dea, "<3", '<img src="' & @ScriptDir & '/smileys/6.gif"></img>')
	$dea = StringReplace($dea, "B)", '<img src="' & @ScriptDir & '/smileys/7.gif"></img>')
	$dea = StringReplace($dea, ":O", '<img src="' & @ScriptDir & '/smileys/8.gif"></img>')
	$dea = StringReplace($dea, "</3", '<img src="' & @ScriptDir & '/smileys/9.gif"></img>')
	$dea = StringReplace($dea, ":P", '<img src="' & @ScriptDir & '/smileys/10.gif"></img>')
	_IEBodyWriteHTML($ie, $dea)
	$iVisibleHeight = $ie.document.body.clientHeight
	$ie.document.parentWindow.scrollBy(0, $iVisibleHeight)
EndFunc   ;==>out
Func _send($ovr = 0, $msg = 0)
	$read = GUICtrlRead($Input1)
	If GUICtrlRead($Input1) = "/adminenable" Then
		GUICtrlSetState($Button2, $GUI_show)
		GUICtrlSetState($Button2, $GUI_enable)
		GUICtrlSetData($Input1, "")
	ElseIf StringLeft($read, 5) = "/kick" And $adminenabled = 1 Then
		$lol = StringSplit($read, "\")
		TCPSend($s, "kick|" & $lol[2] & "|" & $lol[3] & "|" & $lol[4])
		GUICtrlSetData($Input1, "")
	ElseIf StringLeft($read, 3) = "/pm" Then
		$lol = StringSplit($read, " ")
		$text = ""
		For $i = 3 To $lol[0]
			$text = $lol[$i] & " "
		Next
	ElseIf StringLeft($read, 4) = "/enc" Then
		If $useenctxt = 0 Then
			$useenctxt = 1
		Else
			$useenctxt = 0
		EndIf
		GUICtrlSetData($Input1, "")
	ElseIf $ovr = 1 Then
		TCPSend($s, "SENDMSG|" & $msg)
	Else
		If $useenctxt = 0 Then
			TCPSend($s, "SENDMSG|" & GUICtrlRead($Input1))
		Else
			TCPSend($s, "SENDMSG|" & sen(GUICtrlRead($Input1), ""))
		EndIf
		GUICtrlSetData($Input1, "")
	EndIf
EndFunc   ;==>_send
Func cwri($w00t)
	ConsoleWrite($w00t & @LF)
EndFunc   ;==>cwri
Func hidec($controlid)
	GUICtrlSetState($controlid, $GUI_hide)
	GUICtrlSetState($controlid, $GUI_disable)
EndFunc   ;==>hidec
Func showc($controlid, $noenable = 0)
	If $noenable = 0 Then
		GUICtrlSetState($controlid, $GUI_show)
		GUICtrlSetState($controlid, $GUI_enable)
	Else
		GUICtrlSetState($controlid, $GUI_show)
	EndIf
EndFunc   ;==>showc