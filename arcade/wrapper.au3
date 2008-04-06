global $time
global $lk
global $reg
global $ek
local $trial
func wrap($an,$lk,$ek,$tt,$tty)
	$reg = "HKLM\Software\" & $an
	$lkey = regread($reg,"key")
	if $lkey = "trial" then
		$trial = 1
		AdlibEnable("timecheck",1000)
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
	$tlc = sde(RegRead($reg,"tleft"))
	if $tlc <= 0 and $lkey = "TRIAL" Then
		$lkey = inputbox("Enter License","Trail is over! Please enter your license key")
		regwrite($reg,"key","REG_SZ",sen($lkey,$ek))
		wrap($an,$lk,$ek,$tt,$tty)
		Return
	elseif $lkey = "TRIAL" Then
		start()
		Return
	EndIf
	$lkey = regread($reg,"key")
	if $lkey <> sen($lk,$ek) Then
		$lkey = inputbox("Enter License","Invalid license! Please enter your license key")
		regwrite($reg,"key","REG_SZ",sen($lkey,$ek))
		wrap($an,$lk,$ek,$tt,$tty)
		Return
	EndIf
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
	$otl = sde(RegRead($reg,"tleft"))
	consolewrite($otl & @lf)
	regwrite($reg,"tleft","REG_SZ",sen($otl-$ctime,$ek))
	$time = TimerInit()
	$otl = $otl-$ctime
	if $otl <= 0 Then
		while 1
			$lkey = inputbox("Enter License","Trail is over/Invalid license! Please enter your license key")
			regwrite($reg,"key","REG_SZ",sen($lkey,$ek))
			if $lkey = $lk Then
				ExitLoop
			EndIf
		WEnd
		run(@AutoItExe & " " &  '"' & @ScriptFullPath & '"')
		Exit
	EndIf
EndFunc
local $rt
local $rt1
local $an = "abcdefghijklmnopqrstuvxwxyz .=-\)(*&^%$#@!~/+,'"":;><?[]{}" & @CR & @lf & "	_ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
local $ct
func sen($pt,$lol)
	$rt = ""
	$rt1 = ""
	for $i = 1 to stringlen($pt)
		$cl = stringmid($pt,$i,1)
		$cp = StringInStr($an,$cl,1)
		consolewrite($cl & @lf & $cp & @lf)
		if $cp = stringlen($an) Then
			$rt = $rt & "a"
			consolewrite("$rt " & $rt & @lf)
		Else
			$idk = $cp + 1
			consolewrite("$idk " & $idk & @lf)
			$le = stringmid($an,$idk,1)
			consolewrite("$le " & $le & @lf)
			$rt = $rt & $le
			consolewrite("$rtlol " & $rt & @lf)
		EndIf
	Next
	for $i = 1 to stringlen($rt)
		$ctl = stringmid($rt,$i,1)
		consolewrite("$ctl " & $ctl & @lf)
		if $rt1 = "" Then
			$rt1 = $rt1 & stringinstr($an,$ctl,1)
		Else
			$rt1 = $rt1 &  " " & stringinstr($an,$ctl,1)
		EndIf
	Next
		consolewrite("$rt1 " & $rt1 & @lf)
		consolewrite("$rt " & $rt & @lf)
	consolewrite("$rt1 " & $rt1 & @lf)
	$rt = $rt1
	return $rt
EndFunc
func sde($et)
	$rt = ""
	$rt1 = ""
	$pt = ""
	$et = stringreplace($et,@cr," ")
	$et = stringreplace($et,@lf," ")
	$et = stringreplace($et,@crlf," ")
	$ets = stringsplit($et," ")
	for $i = 1 to $ets[0]
		if $ets[$i] = 1 Then
			$rt = $rt & "9"
		Else
			$rt = $rt & stringmid($an,$ets[$i] - 1,1)
		EndIf
	Next
	return $rt
EndFunc