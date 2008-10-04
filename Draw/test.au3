#include <guiconstants.au3>
#include <misc.au3>
#include <array.au3>
$s = "lol"
$s = StringSplit($s,"|")
_ArrayDisplay($s)
$w = 100
$h = 100
$gui = GUICreate("Draw",$w,$h)
$g = GUICtrlCreateGraphic(0,0,$w,$h)
GUICtrlSetGraphic($g,$GUI_GR_COLOR,0,16277715)
GUICtrlSetGraphic($g,$GUI_GR_REFRESH)
$bk = binary(Binary(0xCCFFFFFF))
$bkl = StringLen($bk)
ConsoleWrite($bk & @lf & $bkl & @lf & dec(stringleft(StringRight(binary(Binary(0xFFFFFF)),$bkl-2),$bkl-4)) & @lf)
GUICtrlSetBkColor($g,dec(stringleft(StringRight(binary(Binary(0xFFFFFF)),$bkl-2),$bkl-4)))
GUISetState()
while 1
	$msg = GUIGetMsg()
	$m = GUIGetCursorInfo()
	if $m[2] = 1 and WinActive("Draw") Then
		GUICtrlSetGraphic($g,$GUI_GR_Color,0xFF00000)
		GUICtrlSetGraphic($g,$GUI_GR_DOT,$m[0],$m[1])
		GUICtrlSetGraphic($g,$GUI_GR_REFRESH)
	EndIf
	if $m[3] = 1 and WinActive("Draw") Then
		GUICtrlSetGraphic($g,$GUI_GR_Color,0x00FF000)
		GUICtrlSetGraphic($g,$GUI_GR_PIXEL,$m[0],$m[1])
		GUICtrlSetGraphic($g,$GUI_GR_REFRESH)
	EndIf
WEnd