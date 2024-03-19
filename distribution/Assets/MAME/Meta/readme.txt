The information in this readme.txt file applies to arcadeEIP when using it in 
"standalone" mode. If this system is integrating with LaunchBox, the files and
folders mentioned here are not used since LaunchBox's database will be used
for the system instead.

\Meta\Names
===========
The \Meta\Names folder is used to store a game name map file with the name .meta in
which each line has the format: rom "name". This file can be updated using the MAME
List Tool (mame_list_tool.exe), which automatically updates this file whenever it is 
used to create a new games.xml file (run the tool from the root folder for instructions).

It is generally recommended that you do not make manual edits to the .meta file since
it may be overwritten by future updates making maintenance difficult. However, if you
want to do something like override a game's name, you can do this by using exception
files in the \Meta\Name folder, which will not be overwritten during such an update.
To do this create a text file named <rom>.txt in the folder with the revised game name
as the file's contents. For example, to change the name of "Battle Zone" to "Battlezone"
for the bzone.zip rom, create a file called bzone.txt containing the word "Battlezone"
as the file contents.

\Meta\Info
==========
The \Meta\Info folder is currently only needed/used by the MAME system, and is used to
house catalog and metadata files that are used by the MAME List Tool (mame_list_tool.exe)
found in the root folder of arcadeEIP. To syncronize your MAME version with the files in
this folder, first obtain or create new files using the links and/or methods below that 
match your version of MAME, then run the MAME List Tool.

  Downloaded Files
  ----------------
  - mameinfo.dat  (https://mameinfo.mameworld.info/)
  - history.xml   (https://www.arcade-history.com/index.php?page=download)
  - catver.ini    (https://www.progettosnaps.net/catver/)
  - catlist.ini   (https://www.progettosnaps.net/catver/)
  - nplayers.ini  (https://nplayers.arcadebelgium.be/)

mameinfo.dat and history.xml contain information that may be displayed on pause when
the show_on_pause= and mameinfo_folder= settings in arcadeEIP.ini are configured 
(which they should be by default). The catver/catlist.ini are used to obtain category/
genre information about games, including whether it is an "Arcade" or "Mature" game.
The nplayers.ini file contains information about the number of players supported by
each game.

  Generated Files
  ---------------
  - mame.xml      Run this command in your MAME folder to get a new build of this file.

                     mame.exe -listxml > mame.xml

                  The mame.xml file provides information about game's year, 
                  manufacturer, driver status, and whether it is a parent/child rom
                  or a clone.

  - games.xml     After updating listxml.xml you *MUST* build a new games.xml file
                  using the MAME List Tool in the arcadeEIP root folder. This is a
                  smaller/lighter version of mame.xml that arcadeEIP uses.

  - game_filters.ini  Use this file to configure the master MAME game list filters.

  - filtered_games.txt    Created when running the MAME List Tool This provides a list of
                          all games filtered-out and the reason they were filtered.  

