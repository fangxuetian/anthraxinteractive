#include <array.au3>
dim $data
$c = 0
for $i = 1 to 4288
	$data = $data & Chr(Random(97,122,1))
	$c = $c + 1
	if $c = 50 Then
		ConsoleWrite($i & @lf)
		$c = 0
	EndIf
Next
FileWrite("data.dat",$data)
dim $file[1]
loadfile("data.dat")
_ArrayDisplay($file)
Func _StringChop($string, $size, ByRef $array)
$count = Ceiling(StringLen($string)/$size)
$start = 1
For $i = 1 To $count
    $array[$i] = StringMid($string, $start, $size)
    $start += $size
Next
$array[0] = $count
EndFunc
Func loadfile($filename)
	$tempfile = FileRead($filename)
	$initnum = StringLen($tempfile)/512
	$initnum = $initnum + 1
	if not IsInt($initnum) Then
		$initnum = int($initnum)+1
	EndIf
	redim $file[$initnum]
	_stringchop($tempfile,512,$file)
EndFunc