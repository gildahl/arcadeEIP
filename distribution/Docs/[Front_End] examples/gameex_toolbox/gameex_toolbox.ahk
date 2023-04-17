;gameex_toolbox v.1.0

;This script will create proxy files of your mame favorites from GameEx and place them in the
;folder you designate (see below). Typically, you will want these to go into your
;\arcadeEIP\Favorites\mame folder (presumeing the sys_key of your MAME system is "mame")

#SingleInstance force

;SQLite support to read Data.db3 for favorites info
;See: https://www.autohotkey.com/boards/viewtopic.php?p=7639

;To support this you must place Class_SQLite.ahk from this link in the same folder as this script
;   https://github.com/AHK-just-me/Class_SQLiteDB/archive/master.zip

;Also place sqlite3.dll from this link in the same folder as the running script
;   https://www.sqlite.org/2021/sqlite-dll-win64-x64-3350000.zip

;*****************************************************************************************
#Include Class_SQLiteDB.ahk
DB := new SQLiteDB
DBFileName := "C:\GameEx\Data\Data.db3"                        ;PLEASE SET path to location of Data.db3 in ..\GameEx\Data
If !DB.OpenDB(DBFileName) {
   MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode
   ExitApp
}
Sleep, 1000
;*****************************************************************************************

;PLEASE SET these path constants to be correct on your machine.
GAMELIST_SOURCE := "C:\GameEx\DATA\gamelist.txt"               ;PLEASE SET path to a copy of a good gamelist.txt file
ARCADEEIP_FAVORITES := "D:\arcadeEIP\Favorites\mame"		   ;PLEASE SET path to mame favorites folder in arcadeEIP

;For convenience set any checkbox options you would like to be
;checked by default to 1, then save and compile the script.
bCheckboxOption1 := 1  ;Remove clone info from favorites

;*********************************************************************************************************
; The rest of this file is code that should only be modified if you know how to script in AHK.
;*********************************************************************************************************

if (!InStr(FileExist(ARCADEEIP_FAVORITES), "D"))
{
    FileCreateDir, %ARCADEEIP_FAVORITES%
}

;Gui setup stuff.  Feel free to add/remove options if you like.
Gui, -SysMenu
Gui, Add, Text, vMyText x20 y15 w200, Press Start to begin.
Gui, Add, Text, vDoneMsg x105 y115 w40, Done 
Gui, Add, Groupbox, x10 y40 h45 w220, Options for Favorites List
Gui, Add, Button, vStartButton x40 y140 w70 h30 gStartButtonClick, Start
Gui, Add, Button, vStopButton x130 y140 w70 h30 gStopButtonClick, Close

Gui, Add, Checkbox, vOption1 x20 y60, %A_Space%Make arcadeEIP favorite proxies

guicontrol, , Option1, %bCheckboxOption1%

Gui, Font, Bold ;set new default font for the window
GuiControl, Font, DoneMsg ;assign the new default font to the control
GuiControl, Hide, DoneMsg ;hide done message for now

Gui, Show,, GameEx Toolbox
return

Main:
	GuiControl,, StopButton, Close
	GuiControl, Disable, StartButton	

	;Get a count of the records in the gamelist file
	Loop, read, %GAMELIST_SOURCE%
		recCount := A_Index

	Loop, read, %GAMELIST_SOURCE%  ;, %GAMELIST_DESTINATION%
	{
		GuiControl, , MyText, Processing Record: %A_Index% of %recCount%
		
		oFields := StrSplit( A_LoopReadLine, "|")
		recLength := oFields.Length()
		
		;Note that processing runs faster when array values are assigned to
		;local variables. This is especially true of the description field.	
		sRom := oFields[1]
		sName := oFields[2]
		sManuf := oFields[3]
		sYear := oFields[4]
		sDesc := oFields[12]
		sFav := oFields[16]
		
		 ;Use SQLite to read favorites info from Data.db3
		;*****************************************************************************************
		SQL := "SELECT Favorite FROM Data WHERE RomFile = '" sRom "';"
		If !DB.Query(SQL, RecordSet)
			MsgBox, 16, SQLite Error: Query, % "Msg:`t" . RecordSet.ErrorMsg . "`nCode:`t" . RecordSet.ErrorCode
		RecordSet.Next(Row)
		
		if (Row[1] == "1")
			sFav := "True"
		else
			sFav := "False"
		
		RecordSet.Free()
		;*****************************************************************************************
	
		;If Option1 is checked, remove clone info text inside parentheses for favorites only
		;*****************************************************		
		if (sFav == "True")
		{
			if (Option1 == 1)
			{
				proxyFile := ARCADEEIP_FAVORITES . "\mame " . sRom . ".zip.txt"
				proxyContents := "mame " . sRom
				FileAppend, %proxyContents%, %proxyFile%
				if (ErrorLevel)
					MsgBox, 16, File Write Error, % "Could not write to: " . proxyFile
			}
		}
	}

	GuiControl, Show, DoneMsg
	
	If !DB.CloseDB()
		MsgBox, 16, SQLite Error, % "Msg:`t" . DB.ErrorMsg . "`nCode:`t" . DB.ErrorCode

	return

StartButtonClick:
	Gui, Submit, NoHide ;update control variables & don't hide Gui
	Gosub, Main	
    return
	
StopButtonClick:
    ExitApp