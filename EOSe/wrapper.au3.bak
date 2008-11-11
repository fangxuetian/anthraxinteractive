#include-once
Global $time
Global $lk
Global $reg
Global $ek
Local $trial
Global $regged
$e = 1
#include <em.au3>
Func wrap($an, $lk1, $ek1, $tt, $tty)
	$ek = $ek1
	$lk = $lk1
	$reg = "HKLM\Software\Anthrax Interactive\" & $an
	$lkey = RegRead($reg, "key")
	If $lkey = "trial"  Then
		$trial = 1
		AdlibEnable("timecheck", 1000)
	EndIf
	Local $timeleft1
	$ftc = RegRead("HKLM\Software\Anthrax Interactive\" & $an, "ftc")
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
	$lkey = RegRead($reg, "key")
	$tlc = sde(RegRead($reg, "tleft"), $ek)
	If $tlc <= 0 And $lkey = "TRIAL"  Then
		$lkey = InputBox("Enter License", "Trial is over! Please enter your license key")
		RegWrite($reg, "key", "REG_SZ", sen($lkey, $ek))
		wrap($an, $lk, $ek, $tt, $tty)
		Return
	ElseIf $lkey = "TRIAL"  Then
		start()
		Return
	EndIf
	$lkey = RegRead($reg, "key")
	If $lkey <> sen($lk, $ek) Then
		$lkey = InputBox("Enter License", "Invalid license! Please enter your license key")
		RegWrite($reg, "key", "REG_SZ", sen($lkey, $ek))
		wrap($an, $lk, $ek, $tt, $tty)
		Return
	EndIf
	If $lkey = $lk1 Then
		$regged = 1
	EndIf
	start()
	Return
EndFunc   ;==>wrap
Func start()
	If $trial = 1 Then
		$time = TimerInit()
		AdlibEnable("timecheck", 1000)
	EndIf
	$lkey = RegRead($reg, "key")
	If $lkey = $lk Then
		$regged = 1
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
	If $otl <= 0 Then
		While 1
			$lkey = InputBox("Enter License", "Trial is over/Invalid license! Please enter your license key")
			RegWrite($reg, "key", "REG_SZ", sen($lkey, $ek))
			If $lkey = $lk Then
				ExitLoop
			EndIf
			If @error = 1 Then
				Exit
			EndIf
		WEnd
		$trial = 0
		AdlibDisable()
		Exit
	EndIf
EndFunc   ;==>timecheck