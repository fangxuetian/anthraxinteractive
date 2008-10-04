#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_Change2CUI=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <GuiConstants.au3>
TCPStartup()
$ip = InputBox("", "ip plz")
$s = TCPConnect("127.0.0.1", 8234)
If $s = -1 Then
	MsgBox(0, @error, "")
	Exit
EndIf
Dim $data, $w, $h, $bgcolor, $getcol
TCPSend($s, "w")
Do
	$w = _tcprecv($s)
Until $w <> ""
TCPSend($s, "h")
Do
	$h = _tcprecv($s)
Until $h <> ""
TCPSend($s, "bgcolor")
Do
	$bgcolor = _tcprecv($s)
Until $bgcolor <> ""
TCPSend($s, "allowt")
Do
	$data = _tcprecv($s)
Until $data <> ""
If $data = 1 Then
	Dim $yesno
	$yesno = MsgBox(36, "", "Do you have a fast internet connection?")
	If $yesno = 6 Then
		$getcol = True
	EndIf
EndIf
$gui = GUICreate("Draw", $w, $h)
$g = GUICtrlCreateGraphic(0, 0, $w, $h)
$bgcolor = Binary($bgcolor)
$bglen = StringLen($bgcolor)
GUICtrlSetBkColor($g, Dec(StringLeft(StringRight($bgcolor, $bglen - 2), $bglen - 4)))
AdlibEnable("msghandler", 250)
$color = 0x000000
GUISetState()
While 1
;~ 	$msg = GUIGetMsg()
;~ 	$m = GUIGetCursorInfo()
;~ 	If $m[2] = 1 And WinActive("Draw") Then
;~ 		GUICtrlSetGraphic($g, $GUI_GR_DOT, $m[0], $m[1])
;~ 		GUICtrlSetGraphic($g, $GUI_GR_REFRESH)
;~ 	EndIf
;~ 	If $m[3] = 1 And WinActive("Draw") Then
;~ 		GUICtrlSetGraphic($g, $GUI_GR_PIXEL, $m[0], $m[1])
;~ 		GUICtrlSetGraphic($g, $GUI_GR_REFRESH)
;~ 	EndIf
WEnd
Func _tcprecv($mainsocket)
	Return TCPRecv($s, 2048)
EndFunc   ;==>_tcprecv
Func msghandler()
	$tdata = _tcprecv($s)
	ConsoleWrite($data & @LF & @LF)
	If $tdata <> "" Then
		$tdata = StringSplit($data, @LF)
		For $i = 1 To $data[0]
			If $data <> "" Then
				$data = StringSplit($data, "|")
				If $data[1] = "dot" Then
					GUICtrlSetGraphic($g, $GUI_GR_Color, $data[2])
					GUICtrlSetGraphic($g, $GUI_GR_DOT, $data[3], $data[4])
					GUICtrlSetGraphic($g, $GUI_GR_REFRESH)
					GUICtrlSetGraphic($g, $GUI_GR_Color, $color)
				ElseIf $data[1] = "pixel" Then
					GUICtrlSetGraphic($g, $GUI_GR_Color, $data[2])
					GUICtrlSetGraphic($g, $GUI_GR_PIXEL, $data[3], $data[4])
					GUICtrlSetGraphic($g, $GUI_GR_REFRESH)
					GUICtrlSetGraphic($g, $GUI_GR_Color, $color)
				ElseIf $data[1] = "exit" Then
					Exit
				EndIf
			EndIf
		Next
		
		EndIf
EndFunc   ;==>msghandler