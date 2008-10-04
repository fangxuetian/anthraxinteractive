#include "em.au3"
#include <array.au3>
$data = ""
dim $c
for $i = 1 to 512
	$data = $data & Chr(Random(97,122,1))
	$c = $c + 1
	if $c = 50 Then
		ConsoleWrite($i & @lf)
		$c = 0
	EndIf
Next
ConsoleWrite($data & @lf)
$data = sen($data,"")
ConsoleWrite($data & @lf)
$data = StringSplit($data," ")
_ArrayDisplay($data)
dim $newdata
$c = 0
for $i = 1 to $data[0]
	if StringLen($data[$i]) = 1 Then
		$data[$i] = 0 & $data[$i]
	EndIf
	if $i <> $data[0] Then
		$newdata = $newdata & $data[$i] & " "
	Else
		$newdata = $newdata & $data[$i]
	EndIf
	$c = $c + 1
	if $c = 10 Then
		ConsoleWrite($i & @lf)
		$c = 0
	EndIf
Next
ConsoleWrite($newdata & @lf)
ConsoleWrite(StringLen($newdata) & @lf)