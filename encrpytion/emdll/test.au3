$p = PluginOpen("emdll.dll")
$t = TimerInit()
sen("lolz quicky sux","")
$td = TimerDiff($t)
MsgBox(0,"",$td)
PluginClose($p)