#include <Array.au3>
$a = _StringChop("1234567891234567891231",3)
_ArrayDisplay($a)

Func _StringChop($string, $size)
$count = Ceiling(StringLen($string)/$size)
Dim $array[$count+1], $start = 1
For $i = 1 To $count
    $array[$i] = StringMid($string, $start, $size)
    $start += $size
Next
$array[0] = $count
Return $array
EndFunc