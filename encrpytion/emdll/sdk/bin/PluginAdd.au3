$handle = PluginOpen("example.dll")

$retval = PluginAdd(10, 50) 
msgbox(0, "PluginAdd 10, 50", "Return value: " & $retval & "    @error: " & @error & "    @extended: " & @extended)

$retval = PluginAdd("10", "50") 
msgbox(0, "PluginAdd ""10, 50""", "Return value: " & $retval & "    @error: " & @error & "    @extended: " & @extended)

PluginClose($handle)
