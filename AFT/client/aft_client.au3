;~ #include "em.au3"
$maxdata = 2048
TCPStartup()
$s = TCPConnect("72.197.223.217",2121)
TCPSend($s,sen("reqnp|","|"))
dim $np, $pass
Do
	$np = TCPRecv($s,$maxdata,1)
	$np = Bin2Num($np)
Until $np <> ""
$initnum = 256
MsgBox(0,"",dec(hex(Binary($initnum),8)))
ConsoleWrite($np & @lf & Binary($initnum) & @lf)
TCPSend($s,sen("reqfn|","|"))
dim $fn
Do
	$fn = BinaryToString(TCPRecv($s,$maxdata,1))
Until $fn <> ""
ConsoleWrite($fn & @lf)
TCPSend($s,sen("enc?|","|"))
dim $enc
Do
	$enc = BinaryToString(TCPRecv($s,$maxdata,1))
Until $enc <> ""
if $enc = 1 Then
	$pass = InputBox("pass",'pass no repeating character. the pass "lolz" would not would but the pass "loLz" would')
EndIf
ConsoleWrite(1 & @lf)
MsgBox(0,"",dec(hex($np)))
dim $data
$c = 0
ProgressOn("Downloading","Downloading " & $fn,"0/" & $np & " parts downloaded")
dim $c = 0
dim $speed
dim $time
$time = TimerInit()
for $i = 1 to $np
	$c = $c + 1
	TCPSend($s,sen("reqp|1|" & $i,"|"))
;~ 	ConsoleWrite
	$temp = ""
	Do
		$temp = TCPRecv($s,$maxdata,1)
	until $temp <> ""
	$temp = BinaryToString($temp)
	$data = $data & $temp
	if $c = 10 Then
		$dif = TimerDiff($time)
		$time = TimerInit()
		$dif = ($dif/1000)
		$m = 1/$dif
		$speed = int($c*$m)
		ConsoleWrite("dif " & $dif & " m " & $m & " $speed " & $speed & @LF)
		$c = 0
	EndIf
	ProgressSet($i/$np*100,$i & "/" & $np & " parts downloaded" & @lf & "p/s: " & $speed & @lf &"KB/s " & ($speed*2))
	ConsoleWrite($i & @lf)
Next
;~ $data = BinaryToString($data)
ConsoleWrite($data & @lf)
if $enc = 1 then
	FileWrite($fn,binary(sde($data,$pass)))
	ConsoleWrite("pee" & @lf)
Else
	FileWrite($fn,binary($data))
EndIf
Func Bin2Num($4Bytes)
    Local $dllStruct2_Integer = DllStructCreate("int")
    Local $dllStruct2_Binary = DllStructCreate("byte[4]", DllStructGetPtr($dllStruct2_Integer))

    DllStructSetData($dllStruct2_Binary, 1, $4Bytes)
    Return DllStructGetData($dllStruct2_Integer, 1)
EndFunc   ;==>Bin2Num