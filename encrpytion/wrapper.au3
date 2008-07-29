#include-once
#include <em.au3>
TCPStartup()
#Region var define
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
$guis[0] = 0
#EndRegion
Func wrap($an1, $lk1, $ek1, $tt, $tty, $ip1)
	$ip = $ip1
	$an = $an1
	$ek = $ek1
	$lk = $lk1
	$reg = "HKLM\Software\Anthrax Interactive\" & $an
	$lkey = RegRead($reg, "key")
	If $lkey = "trial" Then
		$trial = 1
		start()
	EndIf
	Local $timeleft1
	$ftc = RegRead($reg, "ftc")
	ConsoleWrite($ftc & @LF)
	If $ftc = "" Then
		$ftc = RegWrite($reg, "ftc", "REG_SZ", "1")
		If $tty = "h" Then
			$timeleft1 = ($tt * 60) * 60
			$timeleft1 = $timeleft1 & "000"
			RegWrite($reg, "tleft", "REG_SZ", sen($timeleft1, $ek))
		ElseIf $tty = "m" Then
			$timeleft1 = $tt * 60
			$timeleft1 = $timeleft1 & "000"
			RegWrite($reg, "tleft", "REG_SZ", sen($timeleft1, $ek))
		ElseIf $tty = "s" Then
			$timeleft1 = $tt
			$timeleft1 = $timeleft1 & "000"
			RegWrite($reg, "tleft", "REG_SZ", sen($timeleft1, $ek))
		EndIf
		RegWrite($reg, "key", "REG_SZ", "TRIAL")
		ShellExecute(@ScriptFullPath)
		wrap($an, $lk1, $ek, $tt, $tty, $ip)
		Return
	EndIf
	$tlc = sde(RegRead($reg, "tleft"), $ek)
	If $tlc <= 0 And $lkey = "TRIAL" Then
		$lkey = InputBox("Enter License", "Trail is over! Please enter your license key")
		RegWrite($reg, "key", "REG_SZ", sen($lkey, $ek))
		wrap($an, $lk, $ek, $tt, $tty, $web)
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
	ConsoleWrite($ctime & @LF)
	Do
		$otl = sde(RegRead($reg, "tleft"), $ek)
	Until $otl <> ""
	ConsoleWrite($otl & @LF)
	RegWrite($reg, "tleft", "REG_SZ", sen($otl - $ctime, $ek))
	$time = TimerInit()
	$otl = $otl - $ctime
	If 0 > $otl Then
		validate()
	EndIf
EndFunc   ;==>timecheck
Func isserialvalid($serial)
	$s = TCPConnect($ip, 5657)
	If $s = -1 Or @error Then
		MsgBox(0, $s & " | " & @error, "OMG :O THERE WAS A ERROR CONTACT ANTHRAX INTERASCTIVE IMMIDIATLY WITH ERRORID: servdown | " & $ip)
		Return 0
	EndIf
	TCPSend($s, sen("VALID|" & $an & "|" & $serial, "|dyns"))
	$data = ""
	Do
		$data = $data & sde(TCPRecv($s, 2048),"|dyns")
	Until $data <> ""
	TCPCloseSocket($s)
	$s = -1
	Return $data
EndFunc   ;==>isserialvalid
Func validate()
	$lkey = sde(RegRead($reg, "key"), $ek)
	$var = isserialvalid($lkey)
	If $var = 1 Then
		for $i = 1 to $guis[0]
			GUISetState(@SW_show, $guis[$i])
		Next
		Return
	Else
		If $lkey = $lk Then
			Return
		Else
			For $i = 1 To $guis[0]
				GUISetState(@SW_HIDE, $guis[$i])
			Next
			$lkey = InputBox("Enter License", "Invalid license or trial is over! Please enter your license key")
			If @error Then
				Exit
			EndIf
			RegWrite($reg, "key", "REG_SZ", sen($lkey, $ek))
			AdlibDisable()
			wrap($an, $lk, $ek, $tt, $tty, $ip)
			Return
		EndIf
	EndIf
EndFunc   ;==>validate
Func regnow($serial)
	RegWrite($reg, "key", "REG_SZ", sen($serial, $ek))
	validate()
	Return
EndFunc   ;==>regnow
Func reggui($handle)
	$guis[0] = $guis[0] + 1
	$guis[$guis[0]] = $handle
EndFunc   ;==>reggui