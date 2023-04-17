========================================
arcadeEIP Emulator-Integration Player
========================================
Readme.txt for version, 0.3.3.3 beta
========================================

QUICK START GUIDES
==================
See, "Quick Start 1 - MAME.txt" for fast startup with MAME.
See, "Quick Start 2 - MARQUEE.txt" if you have a marquee monitor.
See, \Docs folder for comprehensive documentation and examples.

SUMMARY
=======
arcadeEIP is a "game first" back-end for emulator-based multi-game arcade machines which enables these  
machines to operate in an always playable walk-up mode as opposed to the kiosk style operation of most 
front-ends. It achieves this by running games in their native attract modes and auto-switching them 
periodically. Thus a machine using it may always be played immediately/spontaneously by simply dropping in 
a token or pressing the start button just like a real arcade machine. Manual game selection is also supported 
via a simple back-end overlay menu that allows selection and launch of any game without needing to manually
exit the running game, or by easy return to a conventional front-end if desired with a single button press.

arcadeEIP can be used stand-alone. However, it can also integrate with LaunchBox, enabling you to use LB
as a content manager for arcadeEIP's game lists, images, and metadata. When used in this way, arcadeEIP 
can be used as either an alternative or supplement to BigBox as your arcade machine software. Integration
with GameEx and other front-ends is also supported, though not as tightly.

A short overview of general capabilities include live attract mode with auto-switching, an overlay style game
selection menu with access to every game in your collection on just one game selection screen. Extensive custom 
list/favorites/star-rating support; direct game switching via hotstring buttons with excellent support for 
button panels like the Elgato Stream Deck; display of images (such as control panel maps) and mame 
history/mameinfo text on pause; bookend screens; native support for parallel versions of emulators such as MAME;
dynamic marquee with display of high scores; a custom rules engine; sidecar rom re-directs transparent to 
front-ends; and a means of testing/launching fully configured games from the keyboard using simple command line
instructions. 

arcadeEIP does not strive to compete with front-ends.

Finally, while not technically open source; the software is free and source code is available on request for
personal hobbyist usage.  Please see license.txt for more detail.

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

External controls - must be available/mapped while a game is playing
-------------------------------------------------------------------------------
Pause:                   , (comma)        Pause emulator.
Exit:                    . (period)       Exit emulator.
Menu:                    '                Toggle Quick-Switch game picker menu
Magic Key:               . (period)       Hold 2-3 seconds to display the game picker menu 
Previous Game:           [   or q         Go back to previous game in autoplay list
Next Game:               ]   or w         Advance to next game in autoplay list


Quick-Switch game picker menu controls (only used when in the menu)
--------------------------------------------------------------------------------
Navigation:              Arrow keys       Can also use mouse/trackball/spinners, or joysticks
Launch  		 Left-Ctrl        Launch the currently selected game
Favorite                 m                Mark (or unmark) game as a favorite
Star Rating              s                Change star rating of a game
List Mode:		 Left-Alt         Toggles "Picks" list for a system or custom list.
Edit Mode:               Left-Shift       Puts a custom list in edit mode for add/remove.
Add/Remove:              Space            Add/remove games to/from a "Picks" or targeted custom list.

FILE MANIFEST
=============
eip.exe                      : main arcadeEIP executable
marquee.exe                  : marquee player supporting dynamic marquees
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
arcadeEIP 0.3.3.3 beta
Copyright (c) 2023 by David G. Dahlstrom