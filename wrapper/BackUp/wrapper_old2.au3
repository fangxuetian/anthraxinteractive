#include-once
#include <em.au3>
Global $time
Global $lk
Global $reg
Global $ek
Local $trial
Local $serials
Global $an
Global $tt
Global $tty
Global $web
wrap("test", "weemee", ",dyns", 1, "s", "http://cpudeamon.com/forums/serials.lol.dat")
While 1
	Sleep(250)
WEnd
Func wrap($an, $lk1, $ek, $tt, $tty, $web)
	$serials = getserials($web)
	$lk = $lk1
	$reg = "HKLM\Software\" & $an
	$lkey = RegRead($reg, "key")
	If $lkey = "trial"  Then
		$trial = 1
		AdlibEnable("timecheck", 1000)
		start()
	EndIf
	Local $timeleft1
	$ftc = RegRead("HKLM\Software\" & $an, "ftc")
	ConsoleWrite($ftc & @LF)
	If $ftc = "" Then
		$ftc = RegWrite($reg, "ftc", "REG_SZ", "1")
		If $tty = "h"  Then
			$timeleft1 = ($tt * 60) * 60
			$timeleft1 = $timeleft1 & "000"
			RegWrite($reg, "tleft", "REG_SZ", sen($timeleft1, $ek))
		ElseIf $tty = "m"  Then
			$timeleft1 = $tt * 60
			$timeleft1 = $timeleft1 & "000"
			RegWrite($reg, "tleft", "REG_SZ", sen($timeleft1, $ek))
		ElseIf $tty = "s"  Then
			$timeleft1 = $tt
			$timeleft1 = $timeleft1 & "000"
			MsgBox(0, "", $timeleft1)
			RegWrite($reg, "tleft", "REG_SZ", sen($timeleft1, $ek))
		EndIf
		RegWrite($reg, "key", "REG_SZ", "TRIAL")
		$trial = 1
		start()
		Return
	EndIf
	$tlc = sde(RegRead($reg, "tleft"), $ek)
	If $tlc <= 0 And $lkey = "TRIAL"  Then
		$lkey = InputBox("Enter License", "Trail is over! Please enter your license key")
		RegWrite($reg, "key", "REG_SZ", sen($lkey, $ek))
		wrap($an, $lk, $ek, $tt, $tty, $web)
		Return
	ElseIf $lkey = "TRIAL"  Then
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
	$otl = sde(RegRead($reg, "tleft"), $ek)
	ConsoleWrite($otl & @LF)
	RegWrite($reg, "tleft", "REG_SZ", sen($otl - $ctime, $ek))
	$time = TimerInit()
	$otl = $otl - $ctime
	MsgBox(0, "", "hi")
	If 0 > $otl Then
		validate()
	EndIf
EndFunc   ;==>timecheck
Func getserials($wa)
	InetGet($wa, @TempDir & "\" & "gth5.dat")
	$temp = sde(FileRead(@TempDir & "\" & "gth5.dat"), $ek)
	FileDelete(@TempDir & "\" & "gth5.dat")
	$temp = StringSplit($temp, ",")
	Return $temp
EndFunc   ;==>getserials
Func validate()
	$lkey = sde(RegRead($reg, "key"), $ek))
	$var = 0
	For $i = 1 To $serials[0]
		If $lkey = $serials[$i] And $serials[$i] <> "" Then
			$var = 1
		EndIf
	Next
	If $var = 1 Then
		Return
	Else
		If $lkey = $lk Then
			Return
		Else
			$lkey = InputBox("Enter License", "Invalid license! Please enter your license key")
			If @error Then
				MsgBox(0, "", "error")
				Exit
			EndIf
			RegWrite($reg, "key", "REG_SZ", sen($lkey, $ek))
			AdlibDisable()
			wrap($an, $lk, $ek, $tt, $tty, $web)
			Return
		EndIf
	EndIf
		EndFunc   ;==>validate