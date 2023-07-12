\Assets folder
==============

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
(see LaunchBox.txt in the ..\Docs\[Front_End] examples folder for more information).  
***********************************************************************************

* The [asset_name]\Controls\Rom folder should be used to store control panel map png files 
corresponding to individual games for the given system. These files should be named
as [rom_name].png where [rom_name] is the root of the rom filename, such as galaga.png.

* The [asset_name]\Controls\System folder should be used to store control panel map png files 
corresponding to the system. The file should be named as [asset_name].png, such as 
Atari_2600.png

* The [asset_name]\Logo\Rom folder should be used to store logo png files corresponding to
individual games for the given system. These files should be named as [rom_name].png where
[rom_name] is the root of the rom filename, such as galaga.png.

* The [asset_name]\Logo\System folder should be used to store logo png files corresponding to
the system. The file should be named as [asset_name].png, such as MAME.png

* The [asset_name]\Marquee\Rom and [asset_name]\Marquee\System folders should be used to store
game and system marquee png files in the same manner.

* The [asset_name]\Meta\Names folder should be used to store a game name map file in which each
line has the format:  rom "name".  This file should be called .meta (with no
extension). A compatible file may be generated from mame using the command: 

                           mame.exe -listfull > .meta

Note that *.map files from the GameEx front-end are also compatible. Name mappings may also
be specified in individual files named as [rom_name].txt and containing the desired
name. If combined with a .meta file, the individual files will override the game
name in the .meta file.

* The [asset_name]\MAME\Meta\Info folder should be used to store the history.xml and/or mameinfo.dat
files (MAME only).  If present, MAME game info can be displayed on pause when the show_on_pause=
and mameinfo_folder= settings in arcadeEIP.ini are configured according to the documentation (which
it should be by default).

* The [asset_name]\Settings folder stores *.ini files that contain individual game settings.
The following files are currently supported:

  favorites.ini : Where arcadeEIP stores a game's favorite status (0 or 1)
  ratings.ini   : Where arcadeEIP stores a game's star rating (0 though 5)

  volume.ini    : Game-specific volume adjustments (-100 through 100)
                  Currently, to use this feature, the user must manually create the file.
                  For example, to have Galaga play with -10 lower volume than the default
                  and Zaxxon at +20 higher volume than the default, create a volume.ini 
                  file in a text editor and add these lines

                  [Volume]
                  galaga.zip=-10
                  zaxxon.zip=20
