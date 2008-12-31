#include <array.au3>

$ExWin  = "[REGEXPCLASS:(Cabinet|Explore)WClass]"
$AddBar = "[CLASS:Edit; INSTANCE:1]"

$Explorers = WinList($ExWin)
Dim $DirsOp[$Explorers[0][0]]

For $i=1 To $Explorers[0][0]
    $DirsOp[$i-1] = ControlGetText($Explorers[$i][1],"",$AddBar)
Next

_ArrayDisplay($DirsOp)