#include <em.au3>
	dim $a1,$a2
	for $i = 0 to 31
		$a1 = $a1 & chr($i)
	Next
	for $i = 127 to 255
		$a2 = $a2 & chr($i)
	Next
Local $an = "9abcdefghijklmnopqrstuvwxyz| .=-\)(*&^%{}$#@!~/+,'"":;><?[]" & @LF & @CR & "_ABCDEFGHIJKLMNOPQRSTUVWXYZ012345678"
$an = $a1 & $an & $a2