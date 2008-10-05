$handle = PluginOpen("example.dll")
$retval = PluginMsgBox("My title", "My text") 

msgbox(0, "PluginMsgBox", "Return value: " & $retval & "    @error: " & @error & "    @extended: " & @extended)

PluginClose($handle)
