# Trimui Smart - Stock Remix

a stock based OS for the Trimui Smart



##### Main Features

* Stock based
* Bloat free
* Several fixes to basic functionality
* USB-C headphones support
* Extra emulators
* Sane defaults



###### Included Emulators

|System|Emulator|
|-|-|
|Arcade|FinalBurn Neo (Default)<br />MAME 2000<br />MAME 2003-Plus<br />MAME 2010<br />FB Alpha 2012|
|Atari 2600|Stella 2014|
|Atari 7800|ProSystem|
|Atari Lynx|Handy|
|Bandai WonderSwan|Beetle WonderSwan|
|Bandai WonderSwan Color|Beetle WonderSwan|
|Capcom Play System|FB Alpha 2012 CPS-1|
|Capcom Play System II|FB Alpha 2012 CPS-2|
|Capcom Play System III|FB Alpha 2012 CPS-3|
|DOSBox|DOSBox-Pure|
|EasyRPG|EasyRPG Player (0.6.1)|
|FB Neo|FinalBurn Neo|
|Game\&Watch|GW|
|MAME|MAME 2003-Plus (Default)<br />MAME 2000<br />MAME 2010|
|NEC PC Engine|Beetle SuperGrafx|
|NEC PC Engine CD|Beetle SuperGrafx|
|Nintendo DS|Drastic (Steward Fu test build)|
|Nintendo Famicom Disk System|FCEUmm (Default)<br />Nestopia UE|
|Nintendo Gameboy|Gambatte (Default)<br />mGBA|
|Nintendo Gameboy Advance|mGBA (Default)<br />gpSP|
|Nintendo Gameboy Color|Gambatte (Default)<br />mGBA|
|Nintendo NES|FCEUmm (Default)<br />Nestopia UE|
|Nintendo Super Gameboy|mGBA|
|Nintendo SNES|ChimeraSNES (Default)<br />Beetle Supafaust<br />Snes9x 2005<br />Snes9x 2005 Plus<br />Snes9x 2010<br />Snes9x Latest|
|OpenBOR|OpenBOR|
|PG Master|FB Alpha 2012 (Default)<br />FinalBurn Neo (autoselected for certain games)|
|PICO-8|FAKE-08 (Default)<br />Retro8|
|SNK NeoGeo Pocket|Beetle NeoPop (Default)<br />RACE|
|SNK NeoGeo|FinalBurn Neo|
|SNK NeoGeo CD|NeoCD (Default)<br />FinalBurn Neo|
|Sega 32x|PicoDrive|
|Sega CD|PicoDrive (Default)<br />Genesis Plus GX|
|Sega GameGear|Genesis Plus GX|
|Sega Genesis|Genesis Plus GX (Default)<br />PicoDrive|
|Sega Master System|PicoDrive|
|Sony Playstation|PCSX ReARMed|

###### 

###### Included Ports

|Cave Story|
|-|
|VVVVVV|

##### 

##### Installation

Simply download the latest version from [releases](https://github.com/Sakitoshi/trimui_smart_stock_remix/releases) and extract it to the root of your MicroSD card.



###### Usage

All the features of stock firmware are present.



Some highlights are:

* Easy to navigate interface.
* Search function.
* Recent and Favorites lists.
* Unified in-game menu.
* Systems with multiple emulators allow picking which emulator to use by pressing X.
* L2 and R2 buttons via Menu+L/R button combo (needs to be enabled).
* Local netplay integration.



There are some enhancements, though:

* For systems with multiple emulators, the last used emulator will be remembered per-game.
* An app to clean rom names is included. \*
  It removes the parentheses and brackets and replaces underscores with spaces from the rom list without changing the filename of the roms.
* An app to hide unused systems is included. \*\*
* An app to explore the microSD card through Wifi is included.



\* When refreshing roms, open each system rom list once to create the rom lists or the *Rom name cleaner* app will not work.

Alternatively, you can delete the *\*\_cache7.db* file from the *Roms* folder of the systems you want to refresh. You can use the *File Manager* app to do it from your Trimui Smart itself.

You still need to open the rom list on the main menu to create the list, but at least you won't need to do it for all systems.

\*\* To show a hidden system, simply copy a rom to it's respective folder and run the app again.

Alternatively, you can manually move the emulator folder inside *Emus/\_DisabledEmus* to *Emus*. You can use the *File Manager* app to do it from your Trimui Smart itself.



###### WiFi File Transfer usage:

* Once connected to Wifi, open the *WiFi File Transfer* app.
* The IP address of your Trimui Smart will be displayed alongside the user and pass *(trimui*)*.*
* Open your PC web browser and type your Trimui Smart IP address in the address bar.
* Login with user and pass *trimui*.



You can also use a WebDAV client (like WinSCP) to connect.



###### Known Issues

* When plugging USB-C headphones, audio isn't switched automatically if Retroarch is already running.
  to fix it, you have to go into Retroarch audio settings and toggle audio output.
* Nintendo DS completely ignores USB-C headphones.
* Safe shutdown app doesn't turn off the screen once the system has been successfully shutdown.



##### Credits

* cobaltgit and the Quark OS team: borrowed several cores and utilities from them.
* jutleys: also borrowed things from Tomato OS.
* rulerofoz: AnotherStockMix for the Trimui Brick served as inspiration for Stock Remix.
* Steward Fu: for his tweaks to Drastic and several contributions to the handheld community.
