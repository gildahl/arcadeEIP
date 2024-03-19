===================================================================================================
arcadeEIP 
Arcade [E]mulator [I]ntegration [P]layer

Links:
Distribution: https://github.com/gildahl/arcadeEIP
Discord:      https://discord.gg/ZqZWRcSa
Video:        https://www.youtube.com/watch?v=o8WrWOx_Pmk
===================================================================================================
Readme.txt for version, 0.4.2.0 beta
===================================================================================================

QUICK START and TARGETED GUIDES
===============================
See "Quick Start 1 - MAME.txt" for fast startup with MAME.
See "Quick Start 2 - MARQUEE.txt" if you have a marquee monitor.
See \Docs folder for comprehensive documentation and examples. 

ONLINE DOCUMENTATION
====================
Configuration Reference Guide:  
https://docs.google.com/document/d/1nXil1lCDtOdjOz41ahsBHn4iDQyYxFvASLklnJdvh5U/edit?usp=sharing

Command-Line Reference Guide:
https://docs.google.com/document/d/1lZmdyrp3ghYUGqzjInXDCzLWVle89KZuhxRJoAcnaDY/edit?usp=sharing

Rules Reference Guide:
https://docs.google.com/document/d/1usH6u_og0dDxwoNRqGK2VthXj5pwte2_CY2eQpPQDiE/edit?usp=sharing

SUMMARY
=======
arcadeEIP is a custom game emulator launch tool I wrote specifically for my personal arcade machine
due to there being nothing else quite like it. The initial reason for creating it was to reduce the 
amount of "friction" that conventional front-ends add to the arcade experience. Thus, rather than
force users to *always* have to first face a menu, go through a selection process, then load a game
before playing (which is not how traditional arcade machines work), I wanted the option to make my 
multi-game arcade machine *always* immediately playable to anyone passing by--just like a real one--
and to provide more integrated and immediate methods of choosing and switching games. 
 
The answer to doing this was two-fold: First, was to design the software from the ground up to be 
game-first rather than menu-first. This is achieved in arcadeEIP by defaulting to always have a
live game running in its native attract mode while in standby, and auto-switching that game 
periodically in user-determined ways (think of it as a playable screensaver). The key outcome
being that there is always a game ready for immediate play by just dropping in a token and/or
pressing the start button.

To achieve the second goal--less friction when selecting and changing games--the answer was to (a)
implement a single-page overlay menu to select games that was *fast* and felt like it was integrated
into the game; (b) to implement "hot" game switching that exits then loads a new game in one 
step; and (c) to implement first class support for "direct" game switching using a single button 
press on an Elgato Stream Deck, phone, control panel, or any other device capable of executing a 
macro. And to have this work from virtually anywhere at any time, whether that be in-game, from the
desktop, or even anywhere within a conventional front-end like BigBox. 

Finally, while arcadeEIP can be used stand-alone, it can also integrate with LaunchBox, enabling you
to use LaunchBox as a scraper/content-manager for its game lists, images, and metadata including
Favorites and Star Ratings. You can also pair it with a conventional Front End like BigBox too so that
arcadeEIP's hot switching, game-first standby, AND a conventional graphical front end are all usable
together in a modeless fashion.

A short overview of arcadeEIP's fuller list of features includes:
-----------------------------------------------------------------
• Immediate gameplay while in standby (game rotation automatically resumes when done);
• Direct game switching using built-in overlay menu or button devices like Stream Deck;
• Unique scorecard dialog that will snap a screenshot and record a high score for *any* game;
• Dynamic marquee monitor support with optional display of a high score card on the marquee;
• A general-purpose launcher for all your games in most popular emulators;
• Support for pick-lists, custom-lists, favorites, star-ratings, etc.;
• Customizable key maps and support for XInput controllers;
• Standard front end features including run before/after apps, support for loading custom
  control panel profiles, etc.
• Display of images such as control panel maps and mame history/mameinfo text on pause;
• Game startup and exit screens (i.e. "bookend" screens);
• Native support for multiple parallel versions of emulators such as MAME;
• A custom rules engine;
• Easy command line game launcher.
• All coded in AHK 2.0 and published for free on GitHub for easy customizability.

INSTALLATION
============
To install arcadeEIP, create a dedicated folder (e.g. \arcadeEIP or \EIP) and unzip the archive to it. 
If desired, add eip.exe to your system path to allow running it from anywhere. Make sure that the folder
has full write access as arcadeEIP will need to create and write both files and directories within that
folder.

Next, double-click on create_cfg.bat to create a fresh arcadeEIP.ini configuration file.  This will
also create a file called arcadeEIP_example.ini that contains documentation of most settings.

Follow the instructions in "Quick Start 1- MAME.txt" to get up and running with MAME quickly. 

CONTROLS
========
arcadeEIP should work out of the box, using a control panel with default MAME key mappings and/or
a keyboard. If you are using a control panel with different key mappings, you can configure
arcadeEIP to other mappings via its configuration file, arcadeEIP.ini.

Here is a list of default keys. See [Key_Map] section of arcadeEIP.ini to customize.

    Note: The "Magic Key" permits a single button to perform two functions (Exit and Menu 
          toggle) with the ability to swap what happens on hold vs. tap in the configuration.

Basic controls - available while a game is playing (relies on correct configuration)
-------------------------------------------------------------------------------
• Exit:                 ~  (tilde)       Exits game and arcadeEIP immediately.
• Menu Toggle:          '  (apostrophe)  Toggle game selection menu on/off
•  Magic Key (Exit):    .  (period)      Exits after holding for 2-3 seconds.
•  Magic Key (Menu):    .  (period)      Press (< 2 sec.) to toggle game selection menu on/off
• Menu On               =                Show game selection menu (not a toggle)
• Menu Off              -                Hide game selection (not a toggle)
• Pause:                ,  (comma)       Pause emulator.
• Scorecard             ;                Snap a screenshot and enter a high score!
• Previous Game:        [                Go back to previous game while in autoplay
• Next Game:            ]                Advance to next game while in autoplay
• Lock Game:            +                Pause/resume autoswitching
• Exit (panic):         Ctrl-Alt-k       (Use RIGHT Ctrl-Alt) Exit (during hang, black screen, etc.)

Use these controls while in the Game Selection menu
--------------------------------------------------------------------------------
• Launch                Left-Ctrl        Launch the currently selected game
• Navigation:           Arrow keys       Can also use mouse/trackball/spinners, or joysticks
• Page Up/Down:		PageUp/Down      Can also use LAlt and Space (MAME buttons 2 & 3)
• Sort Group Up/Down    1 and 2          Previous/Next sort group (such as first letter of game)
• Add/Remove:           Enter            Add/remove selected game to or from a "picks" or custom list.
• Favorite              m                [M]arks (or unmarks) a game as a favorite
• Star Rating           s                Change star rating of a game
• List View:            v                Toggles game list between its base and "picks" view.
• Edit Mode:            e                Puts a custom list in edit mode for adding and removing games.

Additional controls used to add/remove single and bulk games to/from pick lists and custom lists.
--------------------------------------------------------------------------------------------------
• Add/Remove All:             a      Add/remove all games to or from a "picks" view or custom list
• Add/Remove by rating        r      Add/remove all games having the same star rating as selected game.
• Add/Remove by favorite      f      Add/remove all games having the same favorite marking as selected game.
• Add/Remove by genre         g      Add/remove all games having the same genre as selected game.
• Add/Remove by year          y      Add/remove all games having the same release year as selected game.
• Add/Remove by publisher     p      Add/remove all games having the same publisher as selected game.
• Add/Remove by developer     d      Add/remove all games having the same [developer] as selected game.
• Add/Remove by players       n      Add/remove all games having the same number of players as selected game.

Marquee
---------------------------------------------------------------------------------- 
• Exit Marquee      Ctrl-Alt-x       Exit Marquee application (if in use)


XInput Controllers (such as gamepads, fight sticks, etc.)
==========================================================
As of version 0.4.2.0, arcadeEIP now supports the use of XInput controllers for a limited set of common
actions.  This makes arcadeEIP viable for those using controllers such as gamepads, fight sticks, etc.
The default mappings are as follows (see the [XInput] section of the Configuration Reference Guide for
more detailed information.

• START + A:                         Toggles the game selection menu on and off.
• START + B:                         Pauses and unpauses the running game.
• START + X:                         Toggles the Scorecard dialog on and off.
• A:                                 Launches selected game in game selection menu, or button in Scorecard.
• B:                                 Toggles between the base and picks view of a game list.
• LB (left shoulder button):         Page-up in a game list.
• RB (right shoulder button):        Page-down in a game list.
• LT (left trigger):                 Page-up by sort group (e.g. by first character of the game name).
• RT (right trigger):                Page-down by sort group
• LB + RB                            Home (jump to top of list)
• LT + RT                            End (jump to bottom of list)
• DPAD Up or Left Joystick Up:       Scroll to previous game in list.
• DPAD Down or Left Joystick Down:   Scroll to next game in list.
• DPAD Left or Left Joystick Left:   Scroll to previous list.
• DPAD Right or Left Joystick Right: Scroll to next list.

FILE MANIFEST
=============
• eip.exe                      : main arcadeEIP executable
• util.exe                     : run with no arguments at a command prompt for options 
• marquee.exe                  : marquee player supporting dynamic marquees
• mame_list_tool.exe           : tool to pre-filter MAME game list
• marquee_manager.exe          : display marquees using the command line (for 3rd party apps)
• license.txt                  : terms of the license.
• readme.txt                   : this file
• update.txt                   : version update information
• sound.txt                    : information about turning on and using sound effects
• Quick Start 1 - MAME.txt     : short guide to setting up MAME with EIP.
• Quick Start 2 - MARQUEE.txt  : short guide to using a dynamic marquee monitor with EIP.

Configuration FILES (generated by create_cfg.bat)
-------------------------------------------------
• arcadeEIP.ini                : main configuration file (intended for user editing)
• arcadeEIP_example.ini        : commented configuration file for reference.

OTHER FILES (generated at runtime)
----------------------------------
• .state : record of current list states
• .history : record of game play history
• arcadeEIP.log : log file, created at runtime
• arcadeEIP_fe.log : log file, created by the front-end launcher.
• runlast_native.bat: batch file that will run last emulator command line
• runlast_eip.bat: batch file that will re-launch last run game

DEVELOPMENT NOTES
=================
arcadeEIP was written using AHK 2.0.

Current development environment is Visual Studio Code using the following extensions:
• AutoHotkey Plus Plus
• AutoHotkey v2 Language Support
• vscode-autohotkey-debug

========================================
arcadeEIP 0.4.2.0 beta
Copyright (c) 2024 by David G. Dahlstrom
========================================