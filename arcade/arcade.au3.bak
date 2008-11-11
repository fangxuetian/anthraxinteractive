#include <wrapper.au3>
#include <update.au3>
$port = 5656
update("D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\update.ini", "D:\Documents and Settings\Maverick\Desktop\thumb\anthraxsvn\arcade\update.upd", 1, 1, IniRead("settings.ini", "arcade", "go", 0))
;~ wrap("au3arcade","mmavipcrox","dyns",2,"m","127.0.0.1",$port)
$g = GUICreate("Arcade", 500, 500)
$fm = GUICtrlCreateMenu("File")
$fme = GUICtrlCreateMenuItem("Exit", $fm)
If $regged = 0 Then
	$lm = GUICtrlCreateMenu("License")
	$lmrn = GUICtrlCreateMenuItem("Register now!", $lm)
EndIf
$t = GUICtrlCreateTab(0, 0, 500, 500)
$t1 = GUICtrlCreateTabItem("My games")
$t1lv = GUICtrlCreateListView("my games|pee",0,20,500,(419))
$t1b1 = GUICtrlCreateButton("play!",0,500-60,500,40)
$t2 = GUICtrlCreateTabItem("Get games")
GUICtrlCreateTabItem("")
GUISetState()
reggui($g)
While 1
	$gmsg = GUIGetMsg()
	Switch $gmsg
		Case $lmrn
			If $regged = 1 Then
				GUICtrlDelete($lmrn)
				GUICtrlDelete($lm)
				MsgBox(0, "", "You are already registered")
			Else
				$serial = InputBox("serial","serial")
				regnow($serial)
			EndIf
	EndSwitch
WEnd