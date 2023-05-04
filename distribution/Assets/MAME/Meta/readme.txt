The \Meta\Names folder should be used to store a game name map file in which each
line has the format:  rom "name".  This file should be called .meta (with no
extension). A compatible file may be generated from mame using the command: 

mame.exe -listfull > .meta

Overrides to the contents may be specified by either editing the .meta file,
or (possibly more conveniently), just placing .txt files in the folder in which
the name of the file is named after the rom, and the contents of the text file
is the title you would like to use.

Note that the -listfull command outputs all roms. If you would like to limit this
to arcade roms, you may wish to remove everything below "zzyzzyxx2"

The \Meta\Info folder should be used to store the history.xml and/or mameinfo.dat
files.  If present, game info can be displayed on pause when the show_on_pause=
and mameinfo_folder= settings in arcadeEIP.ini are configured according to the 
documentation (which it should be by default).