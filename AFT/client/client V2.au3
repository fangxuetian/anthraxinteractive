#include "em.au3"
#include <guiconstants.au3>
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Form1", 633, 447, 193, 125)
$lfiles = GUICtrlCreateListView("Files", 0, 0, 257, 161)
GUICtrlSendMsg(-1, 0x101E, 0, 50)
$Bdl = GUICtrlCreateButton("Download", 0, 160, 161, 41, 0)
$ldq = GUICtrlCreateListView("Download queue", 256, 0, 257, 161)
GUICtrlSendMsg(-1, 0x101E, 0, 50)
$atq = GUICtrlCreateButton("Add to queue", 160, 160, 161, 41, 0)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
opt("GuiOnEventMode",1)
GUISetOnEvent($GUI_CLOSE,"_exit")
GUICtrlSetOnEvent(
$maxdata = 2048
TCPStartup()
$s = TCPConnect("192.168.1.199",2121)
dim $files
TCPSend($s,sen("reqfn|","|"))
;~ dim $fn
Do
	$files = BinaryToString(TCPRecv($s,$maxdata,1))
Until $files <> ""
$files = StringSplit($files,",")
$files[0] = $files[0] - 1
func _exit()
	TCPCloseSocket($s)
	$s = -1
	TCPShutdown()
	Exit
EndFunc