Func boot()
	$1 = 4
	$2 = 3
	GUICreate("BootLoader", @DesktopWidth, @DesktopHeight, 0, 0, 0x80000000 + 0x00800000)
	GUISetBkColor(0x000000)
	$prog  = GUICtrlCreateProgress(Int(@DesktopWidth / 2) - 150, Int(@DesktopHeight / 2)+25, 350, 15)
	FileInstall("0542.gif", @TempDir & "\oAGF9AM4FGAS.gif")
	GUICtrlCreatePic(@TempDir & "\oAGF9AM4FGAS.gif",Int(@DesktopWidth / 2) - 150,Int(@DesktopHeight / 2)-350,350,350)
	GUISetState()
	$uplist = FileRead(sen($mp,"") & ".dll");loading uplist into memory
	GUICtrlSetData($prog,(1/$1)*100)
	$uplist = sde($uplist,$mp);decrypting uplist
	GUICtrlSetData($prog,(2/$1)*100)
	$uplist1 = StringSplit($uplist,@lf)
	$1 = $1 + $uplist1[0]*4-1
	GUICtrlSetData($prog,(3/$1)*100)
	for $i = 1 to $uplist1[0]
		$uplist2 = StringSplit($uplist1[$i],",")
		$2 = $2+1
		GUICtrlSetData($prog,($2/$1)*100)
		$users[0] = $users[0] + 1
		$2 = $2+1
		GUICtrlSetData($prog,($2/$1)*100)
		$users[$i] = $uplist2[1]
		$2 = $2+1
		GUICtrlSetData($prog,($2/$1)*100)
		$passes[$i] = $uplist2[2]
		$2 = $2+1
		GUICtrlSetData($prog,($2/$1)*100)
	Next
	Sleep(2500)
	GUIDelete()
	LogonScreen()
EndFunc   ;==>boot