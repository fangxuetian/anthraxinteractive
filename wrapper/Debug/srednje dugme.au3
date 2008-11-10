#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_outfile=LweMon.exe
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <StaticConstants.au3>
#include <EditConstants.au3>
#Include <Misc.au3>
Opt("TrayIconDebug", 1)
Global $radio_hotkeys = true
$dll2 = DllOpen("user32.dll")
$dll3 = DllOpen(".\hook.dll")
Global $PAUSE_KEY = "10" ;SHIFT
#Region ### START Koda GUI section ### Form=
;~ $credits_text = "1" & @CRLF & "2" & @CRLF & "3" & @CRLF & "4" & 
$tray_size = WinGetPos("[CLASS:Shell_TrayWnd]")
$form1 = GUICreate("MuScroll", 300, 50, @DesktopWidth-300, @DesktopHeight-50-$tray_size[3], $WS_POPUP, $WS_EX_TOPMOST)
GUISetIcon("shell32.dll", -121)
GUISetBkColor("0x99ccff")
GUICtrlCreateGraphic(0, 0, 300, 50, $SS_BLACKFRAME)
GUICtrlSetColor(-1, 0)
GUICtrlCreateGraphic(150, 2, 148, 46, $SS_BLACKFRAME)
GUICtrlSetColor(-1, 0)
GUICtrlCreateGraphic(2, 2, 146, 46, $SS_BLACKFRAME)
GUICtrlSetColor(-1, 0)
$setup_button = GUICtrlCreateButton("Setup", 152, 27, 100, 20)
$exit_button = GUICtrlCreateButton("Exit", 252, 27, 44, 20)
$skill_radio = GUICtrlCreateRadio("Skills", 165, 6, 40, 17)
$skill_text = ""
for $i = 0 to 9
	$skill_text &= $i & @CRLF
Next
;~ $texttt = $skill_text
$hotkey_radio = GUICtrlCreateRadio("Hotkeys", 230, 6, 55, 17)
$hotkey_text = "SPACE" & @CRLF & "CTRL" & @CRLF & "ALT" & @CRLF & "ENTER" & @CRLF & "Q" & @CRLF & "W" & @CRLF & "E" & @CRLF & "I" & @CRLF & "S" & @CRLF & "C" & @CRLF & "M" & @CRLF & "P" & @CRLF & "F2" & @CRLF & "F3" & @CRLF & "F4" & @CRLF & "F5" & @CRLF & "F6" & @CRLF & "PRINT SCREEN"; & @CRLF & "
GUICtrlSetState(-1, $GUI_CHECKED)

	$form45 = GUICreate("",144, 44, 0, -26,BitOR($WS_POPUP,$WS_CHILD),$WS_EX_MDICHILD,$form1)
	GUISetBkColor(0xDFF3FE, $form45)
	$credits_label_hotkey = GUICtrlCreateLabel($hotkey_text, 0, -11, 144, 500, $ES_CENTER)
	GUICtrlSetColor(-1, "0x003366")
	GUICtrlSetFont(-1, 14, 400, 0, "Tahoma")
	$credits_label_skill = GUICtrlCreateLabel($skill_text, 0, -11, 144, 500, $ES_CENTER)
	GUICtrlSetColor(-1, "0x003366")
	GUICtrlSetFont(-1, 14, 400, 0, "Tahoma")
	if GUICtrlRead($hotkey_radio) = $GUI_CHECKED Then
		GUICtrlSetState($credits_label_skill, $GUI_HIDE)
	Else
		GUICtrlSetState($credits_label_hotkey, $GUI_HIDE)
	EndIf
	GUISetState()
	
	$sTransHeight = 1
	For $x = 0 to 15
		Local $stemp1 = GUICreate("",144, $sTransHeight, 0, ($sTransHeight * $x)-26 ,BitOR($WS_POPUP,$WS_CHILD),$WS_EX_MDICHILD,$form1)
		GUISetBkColor(0xDFF3FE, $stemp1)
		GUISetState()
		WinSetTrans($stemp1,"",(255/15)*(-1*($x-15)))
	Next

	For $x = 0 to 15
		Local $stemp2 = GUICreate("",144, $sTransHeight, 0, 17-($sTransHeight * $x) ,BitOR($WS_POPUP,$WS_CHILD),$WS_EX_MDICHILD,$form1)
		GUISetBkColor(0xDFF3FE, $stemp2)
		GUISetState()
		WinSetTrans($stemp2,"",(255/15)*(-1*($x-15)))
	Next
	
Const $WH_MOUSE = 7
Global $DLLinst = DLLCall("kernel32.dll","hwnd","LoadLibrary","str",".\hook.dll")
Global $mouseHOOKproc = DLLCall("kernel32.dll","hwnd","GetProcAddress","hwnd",$DLLInst[0],"str","MouseProc")

Global $hhMouse = DLLCall("user32.dll","hwnd","SetWindowsHookEx","int",$WH_MOUSE, _
        "hwnd",$mouseHOOKproc[0],"hwnd",$DLLinst[0],"int",0)
		
DLLCall($dll3,"int","SetValuesMouse","hwnd",$form1,"hwnd",$hhMouse[0])

GUIRegisterMsg(0x1400 + 0x0D30,"FuncScrollUp") ;mouse wheel up
GUIRegisterMsg(0x1400 + 0x0D31,"FuncScrollDown") ;mouse wheel down
GUIRegisterMsg(0x1400 + 0x0A32,"FuncScrollPress") ;mouse PRESS
GUIRegisterMsg(0x1400 + 0x0A33,"FuncHotLeft") ;mouse PRESS
GUIRegisterMsg(0x1400 + 0x0A34,"FuncHotRight") ;mouse PRESS

GUISetState(@SW_SHOW, $form1)
#EndRegion ### END Koda GUI section ###

HotKeySet("{F11}", "check_position")

func check_position()
	Local $credits_location
		Local $credits_hwdn
		if GUICtrlGetState($credits_label_hotkey) = 96 Then
			$credits_hwdn = GUICtrlGetHandle($credits_label_skill)
		Else
			$credits_hwdn = GUICtrlGetHandle($credits_label_hotkey)
		EndIf
	$credits_location = ControlGetPos($form45, "", $credits_hwdn)
	MsgBox(0, "ok", $credits_location[1])
EndFunc

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		case $exit_button
			Exit
		case $setup_button
			MsgBox(0, "Setup", "...is not working yet")
		case $skill_radio
			GUICtrlSetState($credits_label_skill, $GUI_SHOW)
			GUICtrlSetState($credits_label_hotkey, $GUI_HIDE)
		case $hotkey_radio
			GUICtrlSetState($credits_label_skill, $GUI_HIDE)
			GUICtrlSetState($credits_label_hotkey, $GUI_SHOW)
		case $GUI_EVENT_PRIMARYDOWN
			WinSetTrans($form45,"",254)
			do
				dllcall("user32.dll","int","SendMessage","hWnd", $form1,"int",0xA1,"int", 2,"int", 0)
				Local $msgg2 = GUIGetMsg()
			Until $msgg2 <> -7
			WinSetTrans($form45,"",255)
	EndSwitch
WEnd

Func FuncScrollUp();$hWndGUI);, $MsgID);, $WParam, $LParam)
	if NOT _IsPressed($PAUSE_KEY, $dll2) Then
		Local $credits_location
		Local $credits_hwdn
		Local $max_size
		if GUICtrlGetState($credits_label_hotkey) = 96 Then
			$credits_hwdn = GUICtrlGetHandle($credits_label_skill)
			$max_size = -16*11
		Else;If; GUICtrlGetState($credits_label_skill) = $GUI_HIDE Then
			$credits_hwdn = GUICtrlGetHandle($credits_label_hotkey)
			$max_size = -31*11
		EndIf
		$credits_location = ControlGetPos($form45, "", $credits_hwdn)
		if $credits_location[1] >= $max_size then
			for $i = 1 to 3
				$credits_location = ControlGetPos($form45, "", $credits_hwdn)
				ControlMove($form45,"",$credits_hwdn,0,$credits_location[1]-4)
				Sleep(1)
			Next
			for $i = 1 to 2
				$credits_location = ControlGetPos($form45, "", $credits_hwdn)
				ControlMove($form45,"",$credits_hwdn,0,$credits_location[1]-3)
				Sleep(1)
			Next
			$credits_location = ControlGetPos($form45, "", $credits_hwdn)
			ControlMove($form45,"",$credits_hwdn,0,$credits_location[1]-2)
			for $i = 1 to 2
				$credits_location = ControlGetPos($form45, "", $credits_hwdn)
				ControlMove($form45,"",$credits_hwdn,0,$credits_location[1]-1)
				Sleep(1)
			Next
		EndIf
	EndIf
EndFunc

Func FuncScrollDown();$hWndGUI);, $MsgID);, $WParam, $LParam)
	if NOT _IsPressed($PAUSE_KEY, $dll2) Then
		Local $credits_location
		Local $credits_hwdn
		Local $max_size
		if GUICtrlGetState($credits_label_hotkey) = 96 Then
			$credits_hwdn = GUICtrlGetHandle($credits_label_skill)
			$max_size = 10
		Else
			$credits_hwdn = GUICtrlGetHandle($credits_label_hotkey)
			$max_size = 10
		EndIf
		$credits_location = ControlGetPos($form45, "", $credits_hwdn)
		if $credits_location[1] <= $max_size then
			for $i = 1 to 3
				$credits_location = ControlGetPos($form45, "", $credits_hwdn)
				ControlMove($form45,"",$credits_hwdn,0,$credits_location[1]+4)
				Sleep(1)
			Next
			for $i = 1 to 2
				$credits_location = ControlGetPos($form45, "", $credits_hwdn)
				ControlMove($form45,"",$credits_hwdn,0,$credits_location[1]+3)
				Sleep(1)
			Next
			$credits_location = ControlGetPos($form45, "", $credits_hwdn)
			ControlMove($form45,"",$credits_hwdn,0,$credits_location[1]+2)
			for $i = 1 to 2
				$credits_location = ControlGetPos($form45, "", $credits_hwdn)
				ControlMove($form45,"",$credits_hwdn,0,$credits_location[1]+1)
				Sleep(1)
			Next
		EndIf
	EndIf
EndFunc
	
func FuncScrollPress()
	if NOT _IsPressed($PAUSE_KEY, $dll2) Then
		ToolTip("srednje")
	EndIf
EndFunc

func FuncHotRight()
	if NOT _IsPressed($PAUSE_KEY, $dll2) Then
		ToolTip("desno")
	EndIf
EndFunc

func FuncHotLeft()
	if NOT _IsPressed($PAUSE_KEY, $dll2) Then
		ToolTip("levo")
	EndIf
EndFunc

Func OnAutoItExit()
    DLLCall("user32.dll","int","UnhookWindowsHookEx","hwnd",$hhMouse[0])
    DLLCall("kernel32.dll","int","FreeLibrary","hwnd",$DLLinst[0])
	DllClose($dll2)
	DllClose($dll3)
EndFunc