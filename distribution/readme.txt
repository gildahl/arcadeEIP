========================================
arcadeEIP 
Arcade Emulator Integration Player
========================================
Readme.txt for version, 0.4.0.0 beta
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
allow my arcade machine to always operate in a walk-up-and-play mode as opposed to the menu-first 
operation of most front-ends. It achieves this by always having a live game running while in standby,
and auto-switching games periodically.  The key feature is that the game you see on the screen is
always playable by just dropping in a token and/or pressing the start button, just like a real 
arcade machine. Manual game selection is supported too, of course, but via a minimalistic overlay
menu allowing fast selection and launch of any game without needing to exit the currently running
game first--something I don't believe any other launcher or front-end supports. arcadeEIP's hotkey
game switching ability also makes it an ideal companion to the Elgato Stream Deck, which can provide
your arcade machine with one of the most unobtrusive front-ends possible.

arcadeEIP can be used stand-alone; however, it also has integrated support for LaunchBox, enabling
you to use LB as a content manager for its game lists, images, and metadata. When used in this way,
arcadeEIP can also be used as either an alternative or supplement to BigBox as your arcade machine's
front-end. Integration with other front-ends is also supported, though not as tightly.

A short overview of arcadeEIP's fuller list of features includes:
* Live attract mode with auto (and manual) game-switching;
* Game list browsing and selection without exiting the currently running game first;
* Direct game switching using hotkeys/hotstrings making it work well with virtual button panels like
  the Elgato Stream Deck;
* Ability to function as a full-feature launching engine for all your games;
* Many conventional front end features including run before/after apps, support for loading custom
  control panel profiles, etc.
* Support for custom lists,metadata, favorites, and star-ratings;
* Display of images such as control panel maps and mame history/mameinfo text on pause;
* "Bookend" (i.e. startup and exit) screens;
* Native support for multiple parallel versions of emulators such as MAME;
* Dynamic marquee monitor support with display of high scores on the marquee;
* A custom rules engine;
* Sidecar rom re-directs transparent to front-ends;
* And even a unique command-line front-end tool using simple <system> <title> vectors to run any
  game from any system.

INSTALLATION
============
To install arcadeEIP, create a dedicated folder (e.g. \arcadeEIP or \EIP) and unzip the archive to it. 
If desired, add eip.exe to your system path to allow running it from anywhere.

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

Here is a list of key defaults.

Basic controls - available while a game is playing
-------------------------------------------------------------------------------
Menu:             '                Toggle game selection menu
Pause:            , (comma)        Pause emulator.
Exit:             . (period)       Exit emulator.
Magic Key:        . (period)       Hold 2-3 seconds to display the game selection menu 
Previous Game:    [   or q         Go back to previous game in autoplay list
Next Game:        ]   or w         Advance to next game in autoplay list

Quick-Switch game picker menu controls (only used when in the menu)
--------------------------------------------------------------------------------
Navigation:           Arrow keys       Can also use mouse/trackball/spinners, or joysticks
Launch                Left-Ctrl        Launch the currently selected game
Favorite              m                Mark (or unmark) game as a favorite
Star Rating           s                Change star rating of a game
List Mode:	      Left-Alt         Toggles "Picks" list for a system or custom list.
Edit Mode:            Left-Shift       Puts a custom list in edit mode for add/remove.
Add/Remove:           Space            Add/remove selected game to/from a "Picks" or targeted custom list.
Add/Remove All:       a                Add/remove all games to/from a "Picks" or tageted custom list

Additional controls for use in constructing and managing game lists
---------------------------------------------------------------------------------
Add/Remove rating        r        Add/remove all games having the same star rating as selected game.
Add/Remove favorites     f        Add/remove all games having the same favorite marking as selected game.
Add/Remove genre         g        Add/remove all games having the same genre as selected game.
Add/Remove year          y        Add/remove all games having the same release year as selected game.
Add/Remove publisher     u        Add/remove all games having the same publisher as selected game.
Add/Remove developer     d        Add/remove all games having the same developer as selected game.
Add/Remove players       n        Add/remove all games having the same number of players as selected game.

Special keys
----------------------------------------------------------------------------------
Panic             Ctrl-Alt-k       Emergency exit arcadeEIP if it or a game hangs 
Exit Marquee      Ctrl-Alt-x       Exit Marquee application (if in use)

FILE MANIFEST
=============
eip.exe                      : main arcadeEIP executable
marquee.exe                  : marquee player supporting dynamic marquees
util.exe                     : command line/console utility
license.txt                  : terms of the license.
readme.txt                   : this file
update.txt                   : version update information
sound.txt                    : information about turning on sound effects
Quick Start 1 - MAME.txt     : tl;dr guide to setting up MAME with EIP.
Quick Start 2 - MARQUEE.txt  : tl;dr guid to using a dynamic marquee monitor with EIP.

Configuration FILE
------------------
arcadeEIP.ini : see above

OTHER FILES
-----------
.state : holds current state of lists
.history : holds game play history
arcadeEIP.lic : license file (see license.txt)
arcadeEIP.log : log file, created at runtime
arcadeEIP_fe.log : log file, created by the front-end launcher.
runlast_native.bat: batch file that will run last emulator command line
runlast_eip.bat: batch file that will re-launch last run game

========================================
arcadeEIP 0.4.0.0 beta
Copyright (c) 2023 by David G. Dahlstrom