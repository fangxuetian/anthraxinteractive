#include <GUIConstants.au3>
global $mp
if IniRead("settings.ini","up","up",0) = 0 Then
	$b = 0
	while $b = 0
		