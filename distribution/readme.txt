========================================
arcadeEIP 
Arcade Emulator Integration Player
https://github.com/gildahl/arcadeEIP
========================================
Readme.txt for version, 0.4.1.0 beta
========================================

QUICK START GUIDES
==================
See, "Quick Start 1 - MAME.txt" for fast startup with MAME.
See, "Quick Start 2 - MARQUEE.txt" if you have a marquee monitor.
See, \Docs folder for comprehensive documentation and examples.

SUMMARY
=======
arcadeEIP is a custom front-end and launch tool I wrote for my arcade machine over a period of 
several years due to nothing else like it being available. The main reason for writing it was to
reduce the amount of "friction" that conventional front ends add to playing a game. Thus, rather
than force users to *always* have to navigate menus, think of a game to play, choose that game,
wait for it to load, and manually exit that game and go through the same steps before playing 
another, I wanted to allow my arcade machine to *always* be immediately playable--just like a 
real arcade machine; elimimate 'fake' attract modes; and in general, provide a lower friction
method of changing games. 
 
The answer to this was two-fold:  First, make the software "game-first" rather than reproduce the
"menu-first" operation of most front-ends. This is achieved by support to always have a live
game running in its *native* attract mode while in standby, and auto-switching the active game
periodically in user-customizable ways. The key outcome being that the game you see on the screen
is always immediately playable by just dropping in a token and/or pressing the start button, just
a real arcade machine. And when you're done, you can just walk away.

To achieve the second goal--less friction when changing games--the answer was to implement hot
game-switching, which makes game selection more like changing channels than changing a DVD. While the 
current game is running, select a new game from an overlay menu or press the new game's button on an 
Elgato StreamDeck, phone, or other device while the one you were playing is still running and presto,
the current game exits and the new one loads all in one automated step!

arcadeEIP can be used stand-alone; however, it also has integrated support for LaunchBox, enabling
you to use LB as a scraper/content manager for its game lists, images, and metadata. You can also pair
it with a conventional Front End like BigBox so that arcadeEIP's hot switching, game-first standby,
AND a conventional graphical front end can be used with it together (that's actually the way I use it).

A short overview of arcadeEIP's fuller list of features includes:
* Instant gameplay in standby.
* Direct game switching via an overlay menu or button device;
* A launcher for all your games in most emulators;
* Standard front end features including run before/after apps, support for loading custom
  control panel profiles, etc.
* Support for custom lists, metadata, favorites, and star-ratings;
* Support for manual entry of high scores and the taking of high score screenshots.
* Display of images such as control panel maps and mame history/mameinfo text on pause;
* Game startup and exit screens;
* Native support for multiple parallel versions of emulators such as MAME;
* Dynamic marquee monitor support with optional display of high scores on the marquee;
* A custom rules engine;
* Easy command line game launcher.
* All coded in AHK 2.0 and published on GitHub for easy customizability.

INSTALLATION
============
To install arcadeEIP, create a dedicated folder (e.g. \arcadeEIP or \EIP) and unzip the archive to it. 
If desired, add eip.exe to your system path to allow running it from anywhere. Make sure that the folder
has full write access as arcadeEIP will need to create and write both files and directories within that
folder.

Next, double-click on create_cfg.bat to create a fresh arcadeEIP.ini configuration file.  This will
also create a file called arcadeEIP_example.ini that contains documentation of all the settings.

Follow the instructions in "Quick Start 1- MAME.txt" to get up and running with MAME quickly. 

DOCUMENTATION
=============
See these guides in the \Docs folder for more detailed information.

  Configuration Reference Guide.pdf  
  Command-Line Reference Guide.pdf
  Rules Reference Guide.pdf

Also see the example configurations for various emulators in the "\Docs\[System] examples" folder.

NOTE ABOUT MAME VERSIONS
========================
Be aware that arcadeEIP relies rather heavily on being able to send virtual keystrokes to emulators. 
Version 0.172 of MAME introduced support for the "-keyboardprovider dinput" parameter that allows it to 
accept such commands. Versions of MAME prior to this will work with arcadeEIP, but not as well.
Therefore, it is strongly advised that for best results with MAME, that you use arcadeEIP with MAME
version 0.172 or higher.

CONTROLS
========
arcadeEIP should work out of the box, using your keyboard and/or a control panel with default 
MAME key mappings. If you are using a control panel with different key mappings, you can configure
arcadeEIP to other mappings via its configuration file, arcadeEIP.ini.

Here is a list of key defaults. See [Key_Map] section of arcadeEIP.ini for more and to change.

Basic controls - available while a game is playing (relies on correct configuration)
-------------------------------------------------------------------------------
Exit:                 ~                Exits emulator, then arcadeEIP
Menu Toggle:          '                Toggle game selection menu
Menu Show             =                Show game selection menu
Menu Hide             -                Hide game selection menu
Magic Key (menu):     .                Toggle game selection menu
Magic Key (exit):     .                Hold 2-3 seconds to exit 
Pause:                ,                Pause emulator.
Previous Game:        [   or q         Go back to previous game in autoplay list
Next Game:            ]   or w         Advance to next game in autoplay list
Lock Game:            Ctrl-Alt-l       Pause/resume autoswitching
Exit (panic):         Ctrl-Alt-k       (Use RIGHT Ctrl-Alt) Exit (during hang, black screen, etc.)
Enter High Score      Ctrl-Alt-d       (Use RIGHT Ctrl-Alt) Take screenshot and enter high score.

Quick-Switch game picker menu controls (only used when in the menu)
--------------------------------------------------------------------------------
Navigation:           Arrow keys       Can also use mouse/trackball/spinners, or joysticks
Launch                Left-Ctrl        Launch the currently selected game
Favorite              m                Mark (or unmark) game as a favorite
Star Rating           s                Change star rating of a game
"Picks" List Mode:    i                Toggles "Picks" list between full or custom list.
Edit Mode:            k                Puts a custom list in edit mode for add/remove.
Add/Remove:           j                Add/remove selected game to/from a "Picks" or targeted custom list.
Add/Remove All:       a                Add/remove all games to/from a "Picks" or tageted custom list

Additional controls used to bulk add/remove games to/from pick lists and custom lists.
---------------------------------------------------------------------------------
Add/Remove by rating        r      Add/remove all games having the same star rating as selected game.
Add/Remove by favorite      f      Add/remove all games having the same favorite marking as selected game.
Add/Remove by genre         g      Add/remove all games having the same genre as selected game.
Add/Remove by year          y      Add/remove all games having the same release year as selected game.
Add/Remove by publisher     u      Add/remove all games having the same publisher as selected game.
Add/Remove by developer     d      Add/remove all games having the same developer as selected game.
Add/Remove by players       n      Add/remove all games having the same number of players as selected game.

Marquee
---------------------------------------------------------------------------------- 
Exit Marquee      Ctrl-Alt-x       Exit Marquee application (if in use)

FILE MANIFEST
=============
eip.exe                      : main arcadeEIP executable
marquee.exe                  : marquee player supporting dynamic marquees
marquee_manager.exe          : display marquees using the command line
util.exe                     : command line/console utility
license.txt                  : terms of the license.
readme.txt                   : this file
update.txt                   : version update information
sound.txt                    : information about turning on sound effects
Quick Start 1 - MAME.txt     : short guide to setting up MAME with EIP.
Quick Start 2 - MARQUEE.txt  : short guide to using a dynamic marquee monitor with EIP.

Configuration FILES
-------------------
arcadeEIP.ini                : main configuration file (intended for user editing)
arcadeEIP_example.ini        : commented configuration file for reference.

OTHER FILES
-----------
.state : record of current list states
.history : record of game play history
arcadeEIP.lic : license file (see license.txt)
arcadeEIP.log : log file, created at runtime
arcadeEIP_fe.log : log file, created by the front-end launcher.
runlast_native.bat: batch file that will run last emulator command line
runlast_eip.bat: batch file that will re-launch last run game

DEVELOPMENT NOTES
=================
arcadeEIP is written in AHK 2.0.

Current development environment is Visual Studio Code using the following extensions:
* AutoHotkey Plus Plus
* AutoHotkey v2 Language Support
* vscode-autohotkey-debug

========================================
arcadeEIP 0.4.1.0 beta
Copyright (c) 2024 by David G. Dahlstrom
https://github.com/gildahl/arcadeEIP