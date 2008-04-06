#include-once
#include <em.au3>
global $time
global $lk
global $reg
global $ek
local $trial
local $serials
global $an
global $tt
global $tty
global $web
wrap("test","weemee",",dyns",1,"s","http://cpudeamon.com/forums/serials.lol.dat")
while 1
	sleep(250)
WEnd
func wrap($an,$lk1,$ek,$tt,$tty,$web)
	$serials = getserials($web)
	$lk = $lk1
	$reg = "HKLM\Software\" & $an
	$lkey = regread($reg,"key")
	if $lkey = "trial" then
		$trial = 1
		AdlibEnable("timecheck",1000)
		start()
	EndIf
	local $timeleft1
	$ftc = RegRead("HKLM\Software\" & $an,"ftc")
	consolewrite($ftc & @lf)  
	if $ftc = "" Then
		$ftc = regwrite($reg,"ftc","REG_SZ","1")
		if $tty = "h" Then
			$timeleft1 = ($tt*60)*60
			$timeleft1 = $timeleft1 & "000"
			RegWrite($reg,"tleft","REG_SZ",sen($timeleft1,$ek))
		ElseIf $tty = "m" then
			$timeleft1 = $tt*60
			$timeleft1 = $timeleft1 & "000"
			RegWrite($reg,"tleft","REG_SZ",sen($timeleft1,$ek))
		elseif $tty = "s" then
			$timeleft1 = $tt
			$timeleft1 = $timeleft1 & "000"
			msgbox(0,"",$timeleft1)
			RegWrite($reg,"tleft","REG_SZ",sen($timeleft1,$ek))
		EndIf
		regwrite($reg,"key","REG_SZ","TRIAL")
		$trial = 1
		start()
		Return
	EndIf
	$tlc = sde(RegRead($reg,"tleft"),$ek)
	if $tlc <= 0 and $lkey = "TRIAL" Then
		$lkey = inputbox("Enter License","Trail is over! Please enter your license key")
		regwrite($reg,"key","REG_SZ",sen($lkey,$ek))
		wrap($an,$lk,$ek,$tt,$tty,$web)
		Return
	elseif $lkey = "TRIAL" Then
		start()
		Return
	EndIf
	validate()
	start()
	Return
EndFunc
func start()
	if $trial = 1 then
		$time = timerinit()
		AdlibEnable("timecheck",1000)
	EndIf
EndFunc
func timecheck()
	$ctime = timerdiff($time)
	consolewrite($ctime & @lf)
	$otl = sde(RegRead($reg,"tleft"),$ek)
	consolewrite($otl & @lf)
	regwrite($reg,"tleft","REG_SZ",sen($otl-$ctime,$ek))
	$time = TimerInit()
	$otl = $otl-$ctime
	MsgBox(0,"","hi")
	if 0 > $otl then
		validate()
	EndIf
EndFunc
func getserials($wa)
	InetGet($wa,@tempdir & "\" & "gth5.dat")
	$temp = sde(FileRead(@tempdir & "\" & "gth5.dat"),$ek)
	FileDelete(@tempdir & "\" & "gth5.dat")
	$temp = StringSplit($temp,",")
	return $temp
EndFunc
func validate()
	$lkey = sde(regread($reg,"key"),$ek))
	$var = 0
	for $i = 1 to $serials[0]
		if $lkey = $serials[$i] and $serials[$i] <> "" Then
			$var = 1
		EndIf
	Next
	if $var = 1 Then
		Return
	Else
		if $lkey = $lk Then
			Return
		Else
		$lkey = inputbox("Enter License","Invalid license! Please enter your license key")
		if @error Then
			MsgBox(0,"","error")
			Exit
		endif
		regwrite($reg,"key","REG_SZ",sen($lkey,$ek))
		AdlibDisable()
		wrap($an,$lk,$ek,$tt,$tty,$web)
		Return
EndFunc