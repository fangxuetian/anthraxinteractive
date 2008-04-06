dim $key
hotkeyset("^!+K","keygen")
while 1
	sleep(250)
wend
Func keygen()
	$prefix = inputbox("Prefix","You should know what to do here.")
	$n = 0
	$key = "AI" & $prefix & "-"
	while $n <= 15 ;literally this is almost as easy as copy and paste :p
		if $n = 8 or $n = 4 or $n = 12 then
			$key = $key & "-"
			$key = $key & random(0,9,1)
			$n = $n + 1
		else
			$key = $key & random(0,9,1)
			$n = $n + 1
		endif
	Wend
	ClipPut($key)
endfunc