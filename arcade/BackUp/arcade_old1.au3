#include <wrapper.au3>
#include <update.au3>
$port = 5656
update("D:\Documents and Settings\Maverick\Desktop\thumb\PixelSoftsvn\arcade\update.ini","D:\Documents and Settings\Maverick\Desktop\thumb\PixelSoftsvn\arcade\update.upd",1,1,IniRead("settings.ini","arcade","go",0))
;~ wrap("au3arcade","mmavipcrox","dyns",2,"m","127.0.0.1",$port)
$g = GUICreate("Arcade",500,500)
$fm = GUICtrlCreateMenu("File")
$fme = GUICtrlCreateMenuItem("Exit",$fm)
if $regged = 0 then
	$ml = GUICtrlCreateMenu("License")
	$mrn = GUICtrlCreateMenuItem("Register now!",$ml)
EndIf
$regged = 1
$t = GUICtrlCreateTab(0,0,500,500)
$t1 = GUICtrlCreateTabItem("My games")
$t2 = GUICtrlCreateTabItem("My games")
GUICtrlCreateTabItem("")
GUISetState()
reggui($g)
while 1
	$gmsg = GUIGetMsg()
	Switch $gmsg
		case $mrn
			if $regged = 1 Then
				GUICtrlDelete($mrn)
				MsgBox(0,"","You are already registered)
				ContinueCase
			EndIf
		EndSwitch
WEnd