$pid = ""
Do
	$pid = ProcessExists($cmdline[1])
Until $pid <> 0
FileInstall("test.au3","test.au3",1)
MsgBox(0,"","Update complete! please restart program")