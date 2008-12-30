$file = fileread("jscript_orginial.txt")
$file = StringReplace($file,";",";" & @crlf)
FileWrite("jscript.txt",$file)