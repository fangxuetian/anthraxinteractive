#include "em.au3"
$maxdata = 1024
$pass = InputBox(0,0)
TCPStartup()
$s = TCPConnect("127.0.0.1",2121)
TCPSend($s,sen("reqnp|","|"))
dim $np
Do
;~ 	$np = TCPRecv($s,$maxdata,0)
	MsgBox(0,"",TCPRecv($s,$maxdata,0))
Until $np <> ""
$initnum = 256
MsgBox(0,"",dec(hex(Binary($initnum),8)))
ConsoleWrite($np & @lf & Binary($initnum) & @lf)
TCPSend($s,sen("reqfn|","|"))
dim $fn
Do
	$fn = TCPRecv($s,$maxdata)
Until $fn <> ""
ConsoleWrite($fn & @lf)
TCPSend($s,sen("enc?|","|"))
dim $enc
Do
	$enc = TCPRecv($s,$maxdata)
Until $enc <> ""
ConsoleWrite(1 & @lf)
MsgBox(0,"",dec(hex($np)))
dim $data
$c = 0
for $i = 1 to $np
	TCPSend($s,sen("reqp|" & $i,"|"))
	$temp = ""
	Do
		$temp = TCPRecv($s,$maxdata)
	until $temp <> ""
	$data = $data & $temp
	$c = $c + 1
	ConsoleWrite($i & @lf)
Next
ConsoleWrite($data & @lf)
if $enc = 1 then
	FileWrite($fn,sde($data,$pass))
	ConsoleWrite("pee" & @lf)
Else
	FileWrite($fn,$data)
EndIf