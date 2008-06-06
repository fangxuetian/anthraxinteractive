#include <GUIConstants.au3>
#include <EditConstants.au3>
#include <WindowsConstants.au3>
#include <IE.au3>
$oIE = _IECreateEmbedded()
_IENavigate($oIE,"About:Blank")
$pipe = GUICreate("PIPE", 724, 648, 193, 125)
$Enc = GUICtrlCreateButton("Encrypt", 232, 392, 81, 25, 0)
$enctxt = GUICtrlCreateInput("", 8, 392, 217, 21)
$Edit1 = GUICtrlCreateEdit("", 8, 8, 529, 353, BitOR($ES_AUTOVSCROLL,$ES_AUTOHSCROLL,$ES_READONLY,$ES_WANTRETURN,$WS_HSCROLL,$WS_VSCROLL))
GUICtrlSetData(-1, "Hint: research on the internet pipe and how it's used in commands(anther big hunt: unix)")
$addr = GUICtrlCreateInput("http://127.0.0.1:57891/index.html", 432, 608, 209, 21)
$GO = GUICtrlCreateButton("GO", 648, 600, 65, 33, 0)
$Ping = GUICtrlCreateInput("Ping 127.0.0..1", 12, 425, 209, 21)
GUISetState(@SW_SHOW)
Opt("GuiOnEventMode",1)
GUISetOnEvent($GUI_EVENT_CLOSE,"_exit")
;~ GUISetOnEvent($Ping,"ping")
;~ GUISetOnEvent($go,"goweb")
while 1
	sleep(250)
WEnd
func _exit()
	Exit
EndFunc