#include <dstore.au3>
#include <string.au3>
dim $ds
;~ $ds = "lol|lol"
$ds = _dstorestorevalue($ds,"Maverick","Made dst|ore")
MsgBox(0,_StringToHex($ds),$ds)
$ds = _dstorestorevalue($ds,"Maverick Mosher","Is m|y full name")
MsgBox(0,"",$ds)
$ds = _dstorestorevalue($ds,"Maverick","Made dst|o|re")
MsgBox(0,"getvalue",_dstoregetvalue($ds,"Magverick"))