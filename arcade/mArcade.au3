#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_icon=C:\Program Files\AutoIt3\Icons\filetype2.ico
#AutoIt3Wrapper_outfile=C:\Users\maverick\Desktop\thumb\anthrax\Anthrax Arcade\Anthrax Arcade.exe
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_Res_Comment=http://cpudeamon.com is our website
#AutoIt3Wrapper_Res_Description=Anthrax Arcade
#AutoIt3Wrapper_Res_Fileversion=1.0.0.0
#AutoIt3Wrapper_Res_LegalCopyright=Copyright 2008 Anthrax
#AutoIt3Wrapper_Run_Tidy=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
global $ver = 3
global $games = 2
#region template
global $tpl[5]
$tpl[0] = 4
$tpl[1] = '<OBJECT classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"' & @lf & 'codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0"' & @lf & 'WIDTH="530" HEIGHT="530" id="Game">'
$tpl[2] = '<PARAM NAME=movie VALUE="'
$tpl[3] = '"><PARAM NAME=quality VALUE=high><PARAM NAME=bgcolor VALUE=#FFFFFF><EMBED src="'
$tpl[4] = '" quality=high bgcolor=#FFFFFF WIDTH="550" HEIGHT="5500"' & @lf & 'NAME="Game" ALIGN="" TYPE="application/x-shockwave-flash"' & @lf & 'PLUGINSPAGE="http://www.macromedia.com/go/getflashplayer"></EMBED></OBJECT>'
#endregion
if FileExists("settings.ini") = 0 Then
	iniwrite("settings.ini","main","gup",5)
EndIf
#region Includes
#include <Wrapper.au3>
#include <guiconstants.au3>
#include <IE.au3>
#endregion
wrap("Arcade","msdev","msdev","720","h")
#region CMD line componets
if $cmdline[0] = 0 Then
	regapp()
elseif $cmdline[1] = "game" Then
	game($cmdline[2])
elseif $cmdline[1] = "updated" Then
	filedelete("update")
	regapp()
Else
	regapp()
EndIf
#endregion
#region regular application
func regapp()
	uc()
	GUICreate("mArcade")
	$menu = GUICtrlCreateMenu("Options")
	$opt = GUICtrlCreateMenuitem("Options",$menu)
	guictrlcreatelabel("Pease Select one of the following",10,10)
	$opt1 = GUICtrlCreateButton("Play a Game",10,30)
	$opt2 = GUICtrlCreateButton("Update Now!",10,60)
	$opt3 = GUICtrlCreateButton("Get Game ID",10,90)
	guisetstate()
	while 1
		Switch GUIGetMsg()
			case $opt
				guisetstate(@SW_MINIMIZE)
				opts()
				guisetstate(@SW_RESTORE)
			case $opt1
				$gameid = InputBox("GameID","Please enter the game ID of the game you would like to play")
				guisetstate(@SW_MINIMIZE)
				game($gameid)
				guisetstate(@SW_RESTORE)
			case $opt2
				uc(1)
			case $opt3
				guisetstate(@SW_MINIMIZE)
				GIDs()
				guisetstate(@SW_RESTORE)
			case $GUI_EVENT_CLOSE
				exit
		EndSwitch
	WEnd
EndFunc
#endregion
#region update check
func uc($un = 0)
	inetget("Http://toontownmovie.com/mArcade/update.ini","update.ini",1)
	$ug = iniread("update.ini","main","games",$games)
	$uv = iniread("update.ini","main","ver",$ver)
	$gup = iniread("settings.ini","main","gup",5)
	if $un = 1 Then
		if $ug <> $games or $uv <> $ver then
			update()
			return
		EndIf
	EndIf
	if $uv > $ver Then
		update()
		Return
	EndIf
	if $ug > $games Then
		$ngu = $ug - $games
		if $ngu >= $gup Then
			update()
			Return
		EndIf
	EndIf
EndFunc
#endregion
#region updater
func update()
	SplashTextOn("","Downloading update....")
	inetget("http://toontownmovie.com/mArcade/update","update",1,1)
	while @InetGetActive = 1
	WEnd
	run(@ScriptDir & "\" & "update")
	Exit
EndFunc
#endregion
#region run game
func game($gid)
	$game = @TempDir & "\" & $gid & ".temp"
	$gamewin  = guicreate("Game",550,550)
	$oIE = _IECreateEmbedded()
	$lol = GUICtrlCreateObj($oIE,0,0,550,550)
	_IENavigate($oIE,"About:Blank")
	if $gid = 1 Then
		fileinstall("1.swf",$game)
	elseif $gid = 2 then
		fileinstall("2.swf",$game)
	EndIf
	FileWrite(@TempDir & "\" & "1.html",$tpl[1] & $tpl[2] & $game & $tpl[3] & $game & $tpl[4])
	_IENavigate($oIE,@TempDir & "\" & "1.html")
	guisetstate()
	msgbox(0,"","")
	filedelete(@TempDir & "\" & "1.html")
	ControlClick("","",$lol,"left")
	while 1
		Switch GUIGetMsg()
			case $GUI_EVENT_CLOSE
				guidelete($gamewin)
				FileDelete($game)
				Return
		EndSwitch
	WEnd
EndFunc
#endregion
#region game id getter
func GIDs()
	$gidwin = guicreate("Gid's",550,550)
	$oIE = _IECreateEmbedded()
	guictrlcreateobj($oIE,0,0,550,550)
	_IENavigate($oIE,@ScriptDir & "\" & "gid.html")
	guisetstate()
	while 1
		switch guigetmsg()
			case $GUI_EVENT_CLOSE
				guidelete($gidwin)
				Return
		EndSwitch
	WEnd
EndFunc
#endregion
#region options
func opts()
	$gupo = inputbox("","Please enter when mArcade should update when theer are (input number in the box below) new games",5)
	if number($gupo) <> 0 Then
		iniwrite("settings.ini","main","gup",$gupo)
	endif
EndFunc
#endregion