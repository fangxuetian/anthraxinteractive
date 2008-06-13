#include <GUIConstants.au3>
#include <GuiListView.au3>
HotKeySet("{ESC}", "_Exit")
AdlibEnable("Time", 1000)
$Ini = @AppDataDir & "\Anthrax Interactive\Praise\Settings.ini" 
$temp = FileOpen($Ini, 10)
FileClose($temp)
$Wallpaper_File = IniRead($Ini, "Settings", "Background", "C:\Windows\Web\Wallpaper\img5.jpg")
$Interface = GUICreate("OS", @DesktopWidth, @DesktopHeight, -3, 0, BitOR($WS_SYSMENU,$WS_DLGFRAME,$WS_POPUP,$WS_CLIPSIBLINGS))
$Wallpaper = GUICtrlCreatePic($Wallpaper_File, 0, -15, @DesktopWidth, @DesktopHeight)
$RightClick = GUICtrlCreateContextMenu(-1)
$WallpaperSelector = GUICtrlCreateMenuItem("Select Wallpaper", $RightClick)
GUICtrlSetState($Wallpaper, $GUI_DISABLE)
$Taskbar = GUICtrlCreateLabel("", 0, @DesktopHeight - 40, @DesktopWidth, 40, $SS_CENTER)
GUICtrlSetBkColor(-1, 0x808080)
$Time = GUICtrlCreateLabel("ERROR 1", @DesktopWidth - 75, @DesktopHeight - 33, 70)
Time()
GUICtrlSetBkColor(-1, 0x808080)
GUICtrlSetFont($Time, 12)
GUISetState(@SW_SHOW)

While 1
$nMsg = GUIGetMsg()
Switch $nMsg
	Case $WallpaperSelector
		_Wallpaper()
EndSwitch
WEnd

Func _Wallpaper()
	$Selection = FileOpenDialog("Select Wallpaper...", @UserProfileDir & "\Pictures", "Images (*.jpg;*.bmp;*.gif;*.png)", 3)
	$Wallpaper_File = $Selection
	IniWrite($Ini, "Settings", "Background", $Selection)
	#cs
    $WPs = IniRead($Ini, "Settings", "Background", "")
    $WallpaperMain = GUICreate("Select Desktop Background", 367, 406)
    $WallpaperList = GUICtrlCreateList($WPs, 16, 208, 334, 159, $WS_VSCROLL)
    $WallpaperPreview = GUICtrlCreatePic($WPs, 70, 16, 260, 177, BitOR($SS_NOTIFY, $WS_GROUP, $WS_CLIPSIBLINGS))
    $Browse = GUICtrlCreateButton("Browse", 8, 368, 65, 25, 0)
    $Preview = GUICtrlCreateButton("Preview", 78, 368, 65, 25, 0)
    $Save = GUICtrlCreateButton("Save", 150, 368, 65, 25, 0)
    $Delete = GUICtrlCreateButton("Delete", 222, 368, 65, 25, 0)
    $Cancel = GUICtrlCreateButton("Cancel", 294, 368, 65, 25, 0)
    GUISetState(@SW_SHOW)
    While 1
        $nMsg = GUIGetMsg()
        Switch $nMsg
            Case $GUI_EVENT_CLOSE
                GUIDelete($WallpaperMain)
                ExitLoop
            Case $Browse
                $SelectWP = FileOpenDialog("Please select an image to add to the list.", @DesktopDir, "Images (*.jpg;*.jpeg;*.bmp;*.gif;*.png)", 1)
                _GUICtrlListView_AddItem($WallpaperList, $SelectWP)
                GUICtrlDelete($WallpaperPreview)
                $WallpaperPreview = GUICtrlCreatePic($SelectWP, 50, 16, 257, 177, BitOR($SS_NOTIFY, $WS_GROUP, $WS_CLIPSIBLINGS))
            Case $Preview
                GUICtrlDelete($WallpaperPreview)
                $NewPic = _GUICtrlListView_GetItemText($WallpaperList, _GUICtrlListView_GetSelectedColumn($WallpaperList))
                $WallpaperPreview = GUICtrlCreatePic($NewPic, 50, 16, 257, 177, BitOR($SS_NOTIFY, $WS_GROUP, $WS_CLIPSIBLINGS))
            Case $Save
                $GetPic = _GUICtrlListView_GetItemText($WallpaperList, _GUICtrlListView_GetSelectedColumn($WallpaperList))
                $SaveBkGrnd = IniWrite($Ini, "Settings", "Background", $GetPic)
                $SetBkGrnd = GUICtrlSetImage($BkGrnd, $GetPic)
            Case $Delete
                $GetPc = _GUICtrlListView_GetSelectedColumn($WallpaperList)
                _GUICtrlListView_DeleteItem($WallpaperList, $GetPc)
                GUICtrlDelete($WallpaperPreview)
            Case $Cancel
                GUIDelete($WallpaperMain)
                ExitLoop
        EndSwitch
    WEnd
	#ce
EndFunc   ;==>_Wallpaper

Func Time()
	Dim $TimeHour, $TimeAMPM
	$TimeHour = @HOUR
	If $TimeHour <= 11 Then
		$TimeAMPM = "AM"
		$TimeHour = @HOUR
	Else
		$TimeAMPM = "PM"
		$TimeHour = @HOUR
	EndIf
	GUICtrlSetData($Time, $TimeHour & ":" & @MIN & " " & $TimeAMPM)
EndFunc

Func _Exit()
	Exit
EndFunc