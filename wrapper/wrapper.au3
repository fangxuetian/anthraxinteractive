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
global $guis[16277715]
$guis[0] = 0
Func wrap($an, $lk1, $ek1, $tt, $tty, $ip)
	$ek = $ek1
	$lk = $lk1
	$reg = "HKLM\Software\Anthrax Interactive\" & $an
	$lkey = RegRead($reg, "key")
	If $lkey = "trial" Then
		$trial = 1
		AdlibEnable("timecheck", 1000)
		start()
	EndIf
	Local $timeleft1
	$ftc = RegRead($reg, "ftc")
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
		ShellExecute(@ScriptFullPath)
		wrap($an,$lk1,$ek,$tt,$tty,$ip)
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
	do
		$otl = sde(RegRead($reg, "tleft"), $ek)
	until $otl <> ""
	ConsoleWrite($otl & @LF)
	RegWrite($reg, "tleft", "REG_SZ", sen($otl - $ctime, $ek))
	$time = TimerInit()
	$otl = $otl - $ctime
	If 0 > $otl Then
		validate()
	EndIf
EndFunc   ;==>timecheck
Func isserialvalid($sip,$serial)
	TCPStartup()
	$s = TCPConnect($sip,5657)
	TCPSend($s,sen("VALID|" & $serial,"dyns"))
	$data = ""
	Do
		$data = $data & sde(TCPRecv($s,2048))
	until $data <> ""
	return $data
EndFunc   ;==>getserials
Func validate()
	$lkey = sde(RegRead($reg, "key"), $ek)
	$var = isserialvalid($lkey)
	If $var = 1 Then
		Return
	Else
		If $lkey = $lk Then
			Return
		Else
			for $i = 1 to $guis[0]
				GUISetState(@SW_HIDE,$guis[$i]
			Next
			$lkey = InputBox("Enter License", "Invalid license or trial is over! Please enter your license key")
			If @error Then
				Exit
			EndIf
			RegWrite($reg, "key", "REG_SZ", sen($lkey, $ek))
			AdlibDisable()
			wrap($an, $lk, $ek, $tt, $tty, $web)
			Return
		EndIf
	EndIf
EndFunc   ;==>validate
func regnow($serial)
	RegWrite($reg,"key","REG_SZ",sen($serial,$ek)
	validate()
	Return
EndFunc
Func reggui($handle)
	$guis[0] = $guis[0] + 1
	$guis[$guis[0]] = $handle
EndFunc