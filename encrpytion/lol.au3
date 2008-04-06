$run = run("enc.exe",@ScriptDir,"",2)
local $input
Do
	$input = $input & StdoutRead($run)
until ProcessExists($run) = 0
FileWrite("enclog.txt",$input)
exit