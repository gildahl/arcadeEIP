This folder contains examples of [System] sections that have been tested to work.
with arcadeEIP. Naturally, paths and certain parameters may need to change based
on the configuration of your own system.

It is recommended that you review the MAME example first, then work though each
emulator that you want to support carefully.

Keep in mind that arcadeEIP's game-picker menu is an overlay menu, and so is a bit
more picky about the emulators that will work with it than conventional front ends.
In general, be sure to always use your emulator's fullscreen windowed mode rather than its 
exclusive fullscreen mode otherwise the picker menu will not be visible. All the examples
in this folder have been tested to work well with the menu.

Emulators that either (a) do not offer a fullscreen windowed mode and/or (b) which
change your computer's screen resolution are not currently supported to work with
the arcadeEIP's menu.  Here are a few incompatible emulators that were discovered 
during testing, 

* O2EM   (Odyssey 2 emulator; use MAME instead)
* Fusion (Genesis emulator; use MAME instead)
* WinVICE GTK3 build (use the SDL build instead)