#include <GuiConstants.au3>
$ip = InputBox("","ip plz")
$s = TCPConnect($ip,8234)
if $s = -1 then exit
dim $data,$w,$h,$bgcolor,$getcol
TCPSend($s,"w")
Do
	$w = _TCPRecv($s)
until $w <> ""
TCPSend($s,"h")
Do
	$h = _TCPRecv($s)
until $h <> ""
TCPSend($s,"bgcolor")
Do
	$bgcolor = _tcprecv($s)
until $bgcolor <> ""
TCPSend($s,"allowt")
Do
	$data = _tcprecv($s)
until $data <> ""
if $data = 1 Then
	dim $yesno
	$yesno = MsgBox(36,"","Do you have a fast internet connection?")
	if $yesno = 6 Then
		$getcol = True
	EndIf
EndIf
$gui = GUICreate("Draw",$w,$h)
$g = GUICtrlCreateGraphic(0,0,$w,$h)
$bgcolor = Binary($bgcolor)
$bglen = StringLen($bgcolor)
GUICtrlSetBkColor($g,dec(stringleft(StringRight($bgcolor),$bglen-2),$bglen-4))
AdlibEnable("msghandler",250)
$color = 0x000000
while 1
	$msg = GUIGetMsg()
	$m = GUIGetCursorInfo()
	if $m[2] = 1 and WinActive("Draw") Then
		GUICtrlSetGraphic($g,$GUI_GR_DOT,$m[0],$m[1])
		GUICtrlSetGraphic($g,$GUI_GR_REFRESH)
	EndIf
	if $m[3] = 1 and WinActive("Draw") Then
		GUICtrlSetGraphic($g,$GUI_GR_PIXEL,$m[0],$m[1])
		GUICtrlSetGraphic($g,$GUI_GR_REFRESH)
	EndIf
WEnd
func _tcprecv($mainsocket)
	return TCPRecv($s,2048)
EndFunc
func msghandler()
	$data = _tcprecv($s)
	if $data <> "" then
	$data = StringSplit($data,"|")
	if $data[1] = "dot" Then
		GUICtrlSetGraphic($g,$GUI_GR_Color,$data[2])
		GUICtrlSetGraphic($g,$GUI_GR_DOT,$data[3],$data[4])
		GUICtrlSetGraphic($g,$GUI_GR_REFRESH)
		GUICtrlSetGraphic($g,$GUI_GR_Color,$color)
	else if $data[1] = "pixel" Then
		GUICtrlSetGraphic($g,$GUI_GR_Color,$data[2])
		GUICtrlSetGraphic($g,$GUI_GR_PIXEL,$data[3],$data[4])
		GUICtrlSetGraphic($g,$GUI_GR_REFRESH)
		GUICtrlSetGraphic($g,$GUI_GR_Color,$color)
	Else if $data[1] = "exit" Then
		Exit
	EndIf
EndIf

EndFunc