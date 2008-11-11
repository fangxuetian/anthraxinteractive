#include-once
#include <em.au3>
#include <wpa.au3>
#include <dstore.au3>
TCPStartup()
Global $time
Global $lk
Global $reg
Global $ek
Local $trial
Global $an
Global $tt
Global $tty
Global $web
Global $guis[16277715]
Global $ip
Global $regged
Local $ds
$guis[0] = 0
Func wrap($an1, $lk1, $ek1, $tt, $tty, $ip1)
	$regged = 0
	$ip = $ip1
	$an = $an1
	$ek = $ek1
	$lk = $lk1
	$reg = "HKLM\Software\PixelSoft\" & $an
	$ds = FileRead("DRM.dat")
;~ 	$lkey = RegRead($reg, "key")
	$lkey = _dstoregetvalue($ds, "key")
	If $lkey = "trial" Then
		$trial = 1
		start()
	EndIf
	MsgBox(0, "", $lkey)
	Local $timeleft1
	$ftc = ftccheck()
	ConsoleWrite($ftc & @LF)
	If $ftc = 0 Then
;~ 		$ftc = RegWrite($reg, "ftc", "REG_SZ", "1")
		If $tty = "h" Then
			$timeleft1 = ($tt * 60) * 60
			$timeleft1 = $timeleft1 & "000"
;~ 			RegWrite($reg, "tleft", "REG_SZ", sen($timeleft1, $ek))
			$ds = _dstorestorevalue($ds, "tleft", sen($timeleft1, $ek))
			FileDelete("DRM.dat")
			FileWrite("DRM.dat", $ds)
		ElseIf $tty = "m" Then
			$timeleft1 = $tt * 60
			$timeleft1 = $timeleft1 & "000"
;~ 			RegWrite($reg, "tleft", "REG_SZ", sen($timeleft1, $ek))
			$ds = _dstorestorevalue($ds, "tleft", sen($timeleft1, $ek))
			FileDelete("DRM.dat")
			FileWrite("DRM.dat", $ds)
		ElseIf $tty = "s" Then
			$timeleft1 = $tt
			$timeleft1 = $timeleft1 & "000"
;~ 			RegWrite($reg, "tleft", "REG_SZ", sen($timeleft1, $ek))
			$ds = _dstorestorevalue($ds, "tleft", sen($timeleft1, $ek))
			FileDelete("DRM.dat")
			FileWrite("DRM.dat", $ds)
		EndIf
;~ 		RegWrite($reg, "key", "REG_SZ", "TRIAL")
		$ds = _dstorestorevalue($ds, "key", "TRIAL")
		FileDelete("DRM.dat")
		FileWrite("DRM.dat", $ds)
;~ 		ShellExecute(@ScriptFullPath)
		wrap($an, $lk1, $ek, $tt, $tty, $ip)
		Return
	EndIf
;~ 	$tlc = sde(RegRead($reg, "tleft"), $ek)
	$tlc = BinaryToString(sde(_dstoregetvalue($ds, "tleft"), $ek))
	ConsoleWrite("tlc " & $tlc & @LF)
	MsgBox(0, "", $lkey)
	If $tlc <= 0 And $lkey = "TRIAL" Then
		$lkey = InputBox("Enter License", "Trail is over! Please enter your license key")
;~ 		RegWrite($reg, "key", "REG_SZ", sen($lkey, $ek))
		MsgBox(0, "", $lkey)
		$ds = _dstorestorevalue($ds, "key", sen($lkey, $ek))
		MsgBox(0, "", $ds)
		FileDelete("DRM.dat")
		FileWrite("DRM.dat", $ds)
		wrap($an, $lk, $ek, $tt, $tty, $ip)
		Return
	ElseIf $lkey = "TRIAL" Then
		start()
		Return
	EndIf
	validate()
	start()
	Return
EndFunc   ;==>wrap
Func start()
	If $trial = 1 Then
		$time = TimerInit()
		AdlibEnable("timecheck", 1000)
	EndIf
EndFunc   ;==>start
Func timecheck()
	$ctime = TimerDiff($time)
	ConsoleWrite("ctime " & $ctime & @LF)
	Do
;~ 		$otl = BinaryToString(sde(RegRead($reg, "tleft"), $ek))
		$otl = BinaryToString(sde(_dstoregetvalue($ds, "tleft"), $ek))
	Until $otl <> ""
	ConsoleWrite("otl " & $otl & @LF)
;~ 	RegWrite($reg, "tleft", "REG_SZ", sen($otl - $ctime, $ek))
	$ds = _dstorestorevalue($ds, "tleft", sen($otl - $ctime, $ek))
	FileDelete("DRM.dat")
	FileWrite("DRM.dat", $ds)
	$time = TimerInit()
	$otl = $otl - $ctime
	If 0 > $otl Then
		validate()
	EndIf
EndFunc   ;==>timecheck
Func isserialvalid($serial)
	$s = TCPConnect($ip, 5657)
	ConsoleWrite("ip " & $ip & @LF)
	If $s = -1 Or @error Then
		MsgBox(0, $s & " | " & @error, "OMG :O THERE WAS A ERROR CONTACT PixelSoft INTERASCTIVE IMMIDIATLY WITH ERRORID: servdown | " & $ip)
		Return _dstoregetvalue($ds, "ltsv")
	EndIf
	TCPSend($s, sen("VALID|" & $an & "|" & $serial, "|dyns"))
	$data = ""
	Do
		$data = $data & BinaryToString(sde(TCPRecv($s, 2048), "|dyns"))
	Until $data <> ""
	$ds = _dstorestorevalue($ds, "ltsv", $data)
	FileDelete("DRM.dat")
	FileWrite("DRM.dat", $ds)
	TCPCloseSocket($s)
	$s = -1
	Return $data
EndFunc   ;==>isserialvalid
Func ftccheck()
	$s = TCPConnect($ip, 5657)
	ConsoleWrite("ip " & $ip & @LF)
	If $s = -1 Or @error Then
		MsgBox(0, $s & " | " & @error, "OMG :O THERE WAS A ERROR CONTACT PixelSoft INTERASCTIVE IMMIDIATLY WITH ERRORID: servdown | " & $ip)
		Return 1
	EndIf
	TCPSend($s, sen("FTC|" & getpk(), "|dyns"))
	$data = ""
	Do
		$data = $data & BinaryToString(sde(TCPRecv($s, 2048), "|dyns"))
	Until $data <> ""
	TCPCloseSocket($s)
	$s = -1
	Return $data
EndFunc   ;==>ftccheck
Func validate()
;~ 	$lkey = sde(RegRead($reg, "key"), $ek)
	$lkey = BinaryToString(sde(_dstoregetvalue($ds, "key"), $ek))
	$var = isserialvalid($lkey)
	If $var = 1 Then
		$regged = 1
		Return
	Else
		If $lkey = $lk Then
			$regged = 1
			Return
		Else
			For $i = 1 To $guis[0]
				GUISetState(@SW_HIDE, $guis[$i])
			Next
			$lkey = InputBox("Enter License", "Invalid license or trial is over! Please enter your license key")
			If @error Then
				Exit
			EndIf
;~ 			RegWrite($reg, "key", "REG_SZ", sen($lkey, $ek))
			_dstorestorevalue($ds, "key", sen($lkey, $ek))
			FileDelete("DRM.dat")
			FileWrite("DRM.dat", $ds)
			AdlibDisable()
			For $i = 1 To $guis[0]
				GUISetState(@SW_SHOW, $guis[$i])
			Next
			wrap($an, $lk, $ek, $tt, $tty, $ip)
			Return
		EndIf
	EndIf
EndFunc   ;==>validate
Func regnow($serial)
;~ 	RegWrite($reg, "key", "REG_SZ", sen($serial, $ek))
	_dstorestorevalue($ds, "key", sen($serial, $ek))
	FileDelete("DRM.dat")
	FileWrite("DRM.dat", $ds)
	validate()
	Return
EndFunc   ;==>regnow
Func reggui($handle)
	$guis[0] = $guis[0] + 1
	$guis[$guis[0]] = $handle
EndFunc   ;==>reggui
Func getpk()
	Return _WPA_DecodeProductKey(_WPA_getBinaryDPID_WINDOWS())
EndFunc   ;==>getpk