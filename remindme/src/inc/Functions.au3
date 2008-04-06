#include-once
Func Help()
	MsgBox(0, "Anthrax RemindMe Help", "Welcome to Anthrax RemindMe. This program may be a little confusing at first. The first message box contains the hour. You need to put 4, not 04 for the fourth hour. For the second box, it is minutes. Please note you need to put 04 for 3:04, not 4. The third box is AM or PM. That should be pretty obvious. The last box is the alarm message that shows when the set time has been reached. Any other questions should be forwarded to our forums.")
EndFunc
Func Refresh()
	GUICtrlSetData($NowTime, "Current Time : " & _NowTime())
EndFunc
Func _Exit()
	Exit
EndFunc