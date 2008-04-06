while 1
	WinWait("Master Password")
	ControlSend("Master Password","","Edit1","dyns")
	ControlClick("Master Password","","Button1")
WEnd