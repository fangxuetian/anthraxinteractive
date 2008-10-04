#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_Change2CUI=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <GuiConstants.au3>
#include <array.au3>
Const $WM_PAINT = 0x000F
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
GUIRegisterMsg($WM_PAINT,"refresh")
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
;~ 	FileWrite("test.test",Binary($tdata))
	ConsoleWrite($tdata & @LF & @LF)
;~ 	$tdata = Dec
	If $tdata <> "" Then
		$tdata = StringSplit($tdata, @LF)
		ConsoleWrite($tdata[0] & @lf)
		for $i = 1 to $tdata[0]
			ConsoleWrite("peeeeee " & $tdata[$i] & @lf)
		Next
;~ 		MsgBox(0,"","")
		For $i = 1 To $tdata[0]-1
			$data = $tdata[$i]
;~ 			MsgBox(0,"",$data)
			If $data <> "" Then
				$data = StringSplit($data, "|")
				If $data[1] = "dot" Then
					GUICtrlSetGraphic($g, $GUI_GR_Color, $data[2])
					GUICtrlSetGraphic($g, $GUI_GR_DOT, $data[3], $data[4])
					GUICtrlSetGraphic($g, $GUI_GR_Color, $color)
				ElseIf $data[1] = "pixel" Then
					GUICtrlSetGraphic($g, $GUI_GR_Color, $data[2])
					GUICtrlSetGraphic($g, $GUI_GR_PIXEL, $data[3], $data[4])
					GUICtrlSetGraphic($g, $GUI_GR_Color, $color)
				ElseIf $data[1] = "exit" Then
					Exit
				EndIf
			EndIf
		Next
	EndIf
EndFunc   ;==>msghandler
func refresh()
	GUICtrlSetGraphic($g, $GUI_GR_REFRESH)
EndFunc