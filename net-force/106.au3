$file = fileread("jscript_orginial.txt")
$file = StringReplace($file,";",";" & @crlf)
$file = StringReplace($file,"{","{" & @CRLF)
$file = StringReplace($file,"}","}" & @CRLF)
FileWrite("jscript.txt",$file)