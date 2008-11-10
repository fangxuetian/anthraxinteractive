#include "em.au3"
$maxdata = 2048
TCPStartup()
$s = TCPConnect("192.168.1.199",2121)
dim $files
TCPSend($s,sen("reqfn|","|"))
;~ dim $fn
Do
	$files = BinaryToString(TCPRecv($s,$maxdata,1))
Until $files <> ""
$files = StringSplit($files,",")
$files[0] = $files[0] - 1
dim $msgtxt
for $i = 1 to $files[0]
	$msgtxt = $msgtxt & $i & " - " & $Files[$i] & @CRLF
Next
MsgBox(0,"Files",$msgtxt)
dim $idtd
$idtd = InputBox("ID","Enter the ID of the file you wish To download")
$f2d = $files[$idtd]
TCPSend($s,sen("reqnp|" & $idtd,"|"))
dim $np, $pass
Do
	$np = TCPRecv($s,$maxdata,1)
	$np = Bin2Num($np)
Until $np <> ""
TCPSend($s,sen("enc?|" & $idtd ,"|"))
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
ProgressOn("Downloading","Downloading " & $f2d,"0/" & $np & " parts downloaded")
dim $c = 0
dim $speed
dim $time
$time = TimerInit()
for $i = 1 to $np
	$c = $c + 1
	TCPSend($s,sen("reqp|" & $idtd &"|" & $i,"|"))
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
;~ 	ConsoleWrite($i & @lf)
Next
;~ $data = BinaryToString($data)
;~ ConsoleWrite($data & @lf)
if $enc = 1 then
	FileWrite($f2d,binary(sde($data,$pass)))
;~ 	ConsoleWrite("pee" & @lf)
Else
	FileWrite($f2d,binary($data))
EndIf
Func Bin2Num($4Bytes)
    Local $dllStruct2_Integer = DllStructCreate("int")
    Local $dllStruct2_Binary = DllStructCreate("byte[4]", DllStructGetPtr($dllStruct2_Integer))

    DllStructSetData($dllStruct2_Binary, 1, $4Bytes)
    Return DllStructGetData($dllStruct2_Integer, 1)
EndFunc   ;==>Bin2Num
;~ while 1
;~ 	sleep(250)
;~ WEnd
func _exit()
	TCPCloseSocket($s)
	$s = -1
	TCPShutdown()
	Exit
EndFunc