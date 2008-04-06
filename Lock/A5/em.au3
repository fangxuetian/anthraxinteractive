#cs-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program; if not, write to  the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA 
#ce-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local $rt
local $rt1
local $an = "abcdefghijklmnopqrstuvxwxyz .=-\)(*&^%$#@!~/+,'"":;><?[]{}" & @CR & @lf & "	_ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
local $ct
func sen($pt)
	$rt = ""
	$rt1 = ""
	for $i = 1 to stringlen($pt)
		$cl = stringmid($pt,$i,1)
		$cp = StringInStr($an,$cl,1)
		consolewrite($cl & @lf & $cp & @lf)
		if $cp = stringlen($an) Then
			$rt = $rt & "a"
			consolewrite("$rt " & $rt & @lf)
		Else
			$idk = $cp + 1
			consolewrite("$idk " & $idk & @lf)
			$le = stringmid($an,$idk,1)
			consolewrite("$le " & $le & @lf)
			$rt = $rt & $le
			consolewrite("$rtlol " & $rt & @lf)
		EndIf
	Next
	for $i = 1 to stringlen($rt)
		$ctl = stringmid($rt,$i,1)
		consolewrite("$ctl " & $ctl & @lf)
		if $rt1 = "" Then
			$rt1 = $rt1 & stringinstr($an,$ctl,1)
		Else
			$rt1 = $rt1 &  " " & stringinstr($an,$ctl,1)
		EndIf
		consolewrite("$rt1 " & $rt1 & @lf)
	Next
	consolewrite("$rt " & $rt & @lf)
	consolewrite("$rt1 " & $rt1 & @lf)
	$rt = $rt1
	return $rt
EndFunc
func sde($et)
	$rt = ""
	$rt1 = ""
	$pt = ""
	$et = stringreplace($et,@cr," ")
	$et = stringreplace($et,@lf," ")
	$et = stringreplace($et,@crlf," ")
	$ets = stringsplit($et," ")
	for $i = 1 to $ets[0]
		if $ets[$i] = 1 Then
			$rt = $rt & "9"
		Else
			$rt = $rt & stringmid($an,$ets[$i] - 1,1)
		EndIf
	Next
	return $rt
EndFunc