The \Assets\[asset_name] folders are intended as a location for various emulator
asset files where [asset_name] is the value assigned to the asset_name= key in
arcadeEIP.exe for the given system. The \Assets\MAME folder is provided as
an example.

***********************************************************************************
While these folders can be used as a convenient location for your own asset 
data files as well, it is perfectly appropriate to keep them in a location  
separate from this folder and mapped-to using the [Global_Assets] section in  
arcadeEIP.ini (or via system specific keys in the [System] sections) in order
to maintain independence (and non-duplication) of your resource files.

Also, keep in mind that if you specify a LaunchBox image folder as an asset for
a system, LaunchBox will automatically be used for that system's metadata as well.
(see LaunchBox.txt in the ..\Docs\[Fron_End] examples folder for more information).  
***********************************************************************************

The \Controls\Rom folder should be used to store control panel map png files 
corresponding to individual games for the given system. These files should be named
as [rom_name].png where [rom_name] is the root of the rom filename, such as galaga.png.

The \Controls\System folder should be used to store control panel map png files 
corresponding to the system. The file should be named as [asset_name].png, such as 
Atari_2600.png

The \Logo\Rom folder should be used to store logo png files corresponding to individual 
games for the given system. These files should be named as [rom_name].png where
[rom_name] is the root of the rom filename, such as galaga.png.

The \Logo\System folder should be used to store logo png files corresponding to
the system. The file should be named as [asset_name].png, such as MAME.png

The \Marquee\Rom and \Marquee\System folders should be used to store game and 
system marquee png files in the same manner.

The \Meta\Names folder should be used to store a game name map file in which each
line has the format:  rom "name".  This file should be called .meta (with no
extension). A compatible file may be generated from mame using the command: 

                           mame.exe -listfull > .meta

*.map files from the GameEx front-end are also compatible. Name mappings may also
be specified in individual files named as [rom_name].txt and containing the desired
name. If combined with a .meta file, the individual files will override the game
name in the .meta file.

[MAME Only]
The \MAME\Meta\Info folder should be used to store the history.xml and/or mameinfo.dat
files.  If present, game info can be displayed on pause when the show_on_pause=
and mameinfo_folder= settings in arcadeEIP.ini are configured according to the 
documentation (which it should be by default).
