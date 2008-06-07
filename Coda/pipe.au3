#include <GUIConstants.au3>
#include <EditConstants.au3>
#include <WindowsConstants.au3>
#include <IE.au3>
#include <em.au3>
#AutoIt3Wrapper_Plugin_Funcs = MD5Hash

$oIE = _IECreateEmbedded()
;~ _IENavigate($oIE, "About:Blank")
$pipe = GUICreate("PIPE", 724, 648, 193, 125)
$Enc = GUICtrlCreateButton("MD5 Encrypt", 232, 392, 81, 25, 0)
$enctxt = GUICtrlCreateInput("", 8, 392, 217, 21)
$out = GUICtrlCreateEdit("", 8, 8, 529, 353, BitOR($ES_AUTOVSCROLL, $ES_AUTOHSCROLL, $ES_READONLY, $ES_WANTRETURN, $WS_HSCROLL, $WS_VSCROLL))
GUICtrlSetData(-1, "Hint: Research on the internet PIPE and how its used in COMMANDS.(Another Big Hint: UNIX)")
$ie = GUICtrlCreateObj($oIE, 432, 376, 276, 212)
$addr = GUICtrlCreateInput("http://127.0.0.1:57891/index.html", 432, 608, 209, 21)
$GO = GUICtrlCreateButton("GO", 648, 600, 65, 33, 0)
$Ping = GUICtrlCreateInput("Ping 127.0.0..1", 12, 425, 209, 21)
GUISetState(@SW_SHOW)
Opt("GuiOnEventMode", 1)
GUISetOnEvent($GUI_EVENT_CLOSE, "_exit")
GUICtrlSetOnEvent($Enc,"enc")
;~ GUISetOnEvent($Ping,"ping")
;~ GUISetOnEvent($go,"goweb")
While 1
	Sleep(250)
WEnd
Func enc()
	$plH = PluginOpen("MD5Hash.dll")
	out("Encrypted Text: " & MD5Hash(GUICtrlRead($enctxt), 2, True))
	GUICtrlSetData($enctxt,"")
	PluginClose($plH)
EndFunc
Func out($text)
	$old = GUICtrlRead($out)
	GUICtrlSetData($out,$old & @crlf & $text)
EndFunc
Func _exit()
	Exit
EndFunc   ;==>_exit