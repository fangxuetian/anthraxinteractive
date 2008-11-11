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
global $nickid
global $adminenabled
global $supafastdebug
global $isadminbutenabled = 0
global $useemthismsg = 0
dim $dea
if FileRead("file.txt") = 1 Then
	$supafastdebug = 1
	FileWrite("file.txt","0")
EndIf
dim $ovr
dim $ie
$ie = _IECreateEmbedded ()
$s = TCPConnect(InputBox("Enter IP","Enter IP","72.197.223.217"),InputBox("Enter port","enter port",42775))
$nick =InputBox("Nick","Enter your nick","Anonymous" & random(100, 999, 1))
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
_IENavigate($ie,"About:blank")
tcpsend($s,"constat")
$data = ""
do 
	$data = TCPRecv($s,2048)
until $data = "y" or $data = "n"
cwri("constat " &$data)
if $data = "n" then 
	Exit
EndIf
if $data = "y" then
	GUICtrlSetState($Checkbox1,$GUI_CHECKED)
EndIf
TCPSend($s,"reqpass")
$data = ""
Do
	$data = TCPRecv($s,2048)
	cwri($data)
until $data = "yes" or $data = "no"
if $data = "yes" then
	$pass = InputBox("password","enter password")
EndIf
TCPSend($s,"JOIN|" & $nick & "|" & $pass)
$data = ""
Do
	$data = TCPRecv($s,2048)
	cwri($data)
until $data <> ""
$nickid = $data
if $data = "INCPASS" then
	TCPCloseSocket($s)
	MsgBox(0,"Incorrect password","You entered a incorrect password")
	exit(6)
EndIf
GUISetState(@SW_SHOW)
While 1
	if $adminenabled = 1 and $isadminbutenabled = 0 Then
		showc($Button4)
		showc($Button5)
		showc($Button6)
		showc($Button7)
		showc($Button8)
		showc($Checkbox1,1)
		$isadminbutenabled = 1
	EndIf
	 $iVisibleHeight = $IE.document.body.clientHeight
	$IE.document.parentWindow.scrollBy(0,$iVisibleHeight)
	$data = ""
	$data = TCPRecv($s,2048)
	if @error then exit
	if $data <> "" Then
		cwri($data)
	EndIf
	if $data <> "" Then
		$data = StringSplit($data,@lf)
		cwri($data[0])
		for $i = 1 to $data[0]
			$temp = StringSplit($data[$i],"|")
			cwri("Data $i " & $data[$i])
			if $temp[0] > 1 then
				cwri($temp[1])
				if $temp[1] = "sendmsg" Then
					out($temp[2] & " : " & $temp[3])
				elseif $temp[1] = "exit" and $temp[2] = $nick Then
					TCPCloseSocket($s)
					GUIDelete()
					MsgBox(0,$temp[3],$temp[4])
					exit(5)
				EndIf
			elseif $temp[1] = "condis" Then
				GUICtrlSetState($Checkbox1,$GUI_UNCHECKED)
			elseif $temp[1] = "conena" Then
				GUICtrlSetState($Checkbox1,$GUI_CHECKED)
			Else
				out($temp[1])
			EndIf
		Next
	EndIf
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		case $Button1
			_send()
		case $Button2
			$adminuser = InputBox("","USER")
			$adminpass = InputBox("","PASS","","*")
			TCPSend($s,"adminlogin|" & $adminuser & "|" & $adminpass)
			Do
				$data = TCPRecv($s,2048)
			until $data <> ""
			msgbox(0,$data,$data)
			if $data = "yesadmin" Then
				$adminenabled = 1
			EndIf
		case $Button3
			$dea = ""
			_IEBodyWriteHTML($ie,"Nothing in console")
		Case $Button4
			$msgi = InputBox("Message","Enter admin message")
			TCPSend($s,"RAW|Admin : " & $msgi)
		case $Button5
			$raw = InputBox("RAW","RAW")
			TCPSend($s,"RAW|" & $raw)
		case $Button6
			tcpsend($s,"conendi")
		case $Button7
			$npass = InputBox("Password","Please enter the New password")
			TCPSend($s,"cpass|" & $npass)
		case $Button8
			$rawserver = InputBox("RAW","this will be send to the server raw.")
			tcpsend($s,$rawserver)
	EndSwitch
	$iVisibleHeight = $IE.document.body.clientHeight
	$IE.document.parentWindow.scrollBy(0,$iVisibleHeight)
WEnd
func out($input)
	$dea = $dea & "<br>" & $input
	$dea =  stringreplace($dea,":)",'<img src="' & @ScriptDir & '/smileys/1.gif"></img>')
	$dea =  stringreplace($dea,":(",'<img src="' & @ScriptDir & '/smileys/2.gif"></img>')
	$dea =  stringreplace($dea,";)",'<img src="' & @ScriptDir & '/smileys/3.gif"></img>')
	$dea =  stringreplace($dea,":D",'<img src="' & @ScriptDir & '/smileys/4.gif"></img>')
	$dea =  stringreplace($dea,"(:<",'<img src="' & @ScriptDir & 'smileys/5.gif"></img>')
	$dea =  stringreplace($dea,"<3",'<img src="' & @ScriptDir & '/smileys/6.gif"></img>')
	$dea =  stringreplace($dea,"B)",'<img src="' & @ScriptDir & '/smileys/7.gif"></img>')
	$dea =  stringreplace($dea,":O",'<img src="' & @ScriptDir & '/smileys/8.gif"></img>')
	$dea =  stringreplace($dea,"</3",'<img src="' & @ScriptDir & '/smileys/9.gif"></img>')
	$dea =  stringreplace($dea,":P",'<img src="' & @ScriptDir & '/smileys/10.gif"></img>')
	_IEBodyWriteHTML($ie,$dea)
	$iVisibleHeight = $IE.document.body.clientHeight
	$IE.document.parentWindow.scrollBy(0,$iVisibleHeight)
EndFunc
func _send($ovr = 0, $msg = 0)
	$read = GUICtrlRead($Input1)
	if GUICtrlRead($Input1) = "/adminenable" Then
		GUICtrlSetState($Button2,$GUI_show)
		GUICtrlSetState($Button2,$GUI_enable)
		GUICtrlSetData($Input1,"")
	elseif stringleft($read,4) = "/enc" Then
		$useemthismsg = 1
	elseif stringleft($read,5) = "/kick" and $adminenabled = 1 Then
		$lol = StringSplit($read,"\")
		TCPSend($s,"kick|" & $lol[2] & "|" & $lol[3] & "|" & $lol[4])
		GUICtrlSetData($Input1,"")
	ElseIf stringleft($read,3) = "/pm" then
		$lol = StringSplit($read," ")
		$text = ""
		for $i = 3 to $lol[0]
			$text = $lol[$i] & " "
		Next
	ElseIf $ovr = 1 Then
		If $useemthismsg = 1 Then
			TCPSend($s,"SENDMSG|" & sen($msg, ""))
			$useemthismsg = 0
		Else
			TCPSend($s,"SENDMSG|" & $msg)
			$useemthismsg = 0
		EndIf
	Else
		tcpsend($s,"SENDMSG|" & sen(GUICtrlRead($Input1), ""))
		GUICtrlSetData($Input1,"")
		If $useemthismsg = 1 Then
			TCPSend($s,"SENDMSG|" & sen(GUICtrlRead($Input1), ""))
			$useemthismsg = 0
			GUICtrlSetData($Input1,"")
		Else
			TCPSend($s,"SENDMSG|" & GUICtrlRead($Input1))
			$useemthismsg = 0
			GUICtrlSetData($Input1,"")
		EndIf
	EndIf
EndFunc
func cwri($w00t)
	ConsoleWrite($w00t & @lf)
EndFunc
func hidec($controlid)
	GUICtrlSetState($controlid,$GUI_hide)
	GUICtrlSetState($controlid,$GUI_disable)
EndFunc
func showc($controlid, $noenable = 0)
	if $noenable = 0 then
		GUICtrlSetState($controlid,$GUI_show)
		GUICtrlSetState($controlid,$GUI_enable)
	Else
		GUICtrlSetState($controlid,$GUI_show)
	EndIf
EndFunc