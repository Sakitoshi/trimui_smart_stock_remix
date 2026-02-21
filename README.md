# Trimui Smart - Stock Remix

a stock based OS for the Trimui Smart



## Main Features

* Stock based.
* Bloat free.
* Several fixes to basic functionality.
* USB-C headphones support.
* Extra emulators.
* Sane defaults.



### Included Emulators

|System|Emulator|
|-|-|
|Arcade|FinalBurn Neo (Default)<br />MAME 2000<br />MAME 2003-Plus<br />MAME 2010<br />FB Alpha 2012|
|Atari 2600|Stella 2014|
|Atari 5200|a5200 (Default)<br />Atari800|
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
|Nintendo FDS|FCEUmm (Default)<br />Nestopia UE|
|Nintendo GB|Gambatte (Default)<br />mGBA|
|Nintendo GBA|mGBA (Default)<br />gpSP|
|Nintendo GC|Gambatte (Default)<br />mGBA|
|Nintendo NES|FCEUmm (Default)<br />Nestopia UE|
|Nintendo SGB|mGBA|
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

### Included Ports

|Port|
|-|
|Cave Story|
|VVVVVV|

## Installation

Simply download the latest version from [releases](https://github.com/Sakitoshi/trimui_smart_stock_remix/releases) and extract it to the root of your MicroSD card.



### Recommended Bios

It is recommended to copy bios files to `RetroArch/.retroarch/system` for these systems, some would not work at all if the bios is missing:

|System|Bios file|Required|
|-|-|-|
|Atari 5200|5200.rom|No|
|Atari 7800|7800 BIOS (U).rom|No|
|Atari Lynx|lynxboot.img|No|
|EasyRPG|rtp/2000 folder<br />rtp/2003 folder|No|
|Nec PC Engine CD|gexpress.pce<br />syscard1.pce<br />syscard2.pce<br />syscard3.pce|Yes|
|Nintendo FDS|disksys.rom|Yes|
|Nintendo GB|gb_bios.bin|No|
|Nintendo GBA|gba_bios.bin|No|
|Nintendo GBC|gbc_bios.bin|No|
|Nintendo SGB|sgb_bios.bin|No|
|SNK NeoGeo CD|neocd/000-lo.lo<br />neocd/front-sp1.bin<br />neocd/neocd.bin<br />neocd/neocd_f.rom<br />neocd/neocd_sf.rom<br />neocd/neocd_st.rom<br />neocd/neocd_sz.rom<br />neocd/neocd_t.rom<br />neocd/neocd_z.rom<br />neocd/ng-lo.rom<br />neocd/top-sp1.bin<br />neocd/uni-bioscd.rom<br />neocdz.zip|Yes|
|Sega CD|bios_CD_E.bin<br />bios_CD_J.bin<br />bios_CD_U.bin|Yes|
|Sega GameGear|bios.gg|No|
|Sega Master System|bios_E.sms<br />bios_J.sms<br />bios_U.sms|No|
|Sony Playstation|psponpsx660.bin (preferred)<br />scph101.bin <br />scph1001.bin<br />scph5500.bin<br />scph5501.bin<br />scph5502.bin|No|



### Usage

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

* USB-C headphones volume can be adjusted.
* For systems with multiple emulators, the last used emulator will be remembered per-game.
* An app to clean rom names is included.\*<br />
  It removes the parentheses and brackets and replaces underscores with spaces from the rom list without changing the filename of the roms.
* An app to hide unused systems is included.\*\*
* An app to explore the microSD card through Wifi is included.



\* When refreshing roms, open each system rom list once to create the rom lists or the *Rom name cleaner* app will not work.<br />
  Alternatively, you can delete the `*_cache7.db` file from the `Roms` folder of the systems you want to refresh.<br />
  You can use the *File Manager* app to do it from your Trimui Smart itself.<br />
  You still need to open the rom list on the main menu to create the list, but at least you won't need to do it for all systems.

\*\* To show a hidden system, simply copy a rom to it's respective folder and run the app again.<br />
     Alternatively, you can manually move the emulator folder inside `Emus/\_DisabledEmus` to `Emus`. You can use the *File Manager* app to do it from your Trimui Smart itself.



### WiFi File Transfer usage:

1) Connect to Wifi through the main menu.
2) Once connected to Wifi, open the *WiFi File Transfer* app.
3) The IP address of your Trimui Smart will be displayed alongside the user and pass (*trimui*).
4) Open your PC web browser and type your Trimui Smart IP address in the address bar.
5) Login with user and pass *trimui*.



You can also use a WebDAV client (like WinSCP) to connect.



### EasyRPG usage:

EasyRPG emulator is an old version (0.6.1) that doesn't support *.easyrpg* zipped files.<br />
So, in order to keep things cleaner in the game list, "fake" *.easyrpg* files must be used.

They are simple text files you can create with notepad and contain the relative path to the *RPG_RT.ldb* file of the game.

Simply follow these steps when copying EasyRPG games:

1) Copy the game folder to the `Roms/EasyRPG` folder (example: `Roms/EasyRPG/Yume_Nikki`).
2) Create a text file in the `Roms/EasyRPG` folder containing the path to the *RPG_RT.ldb* file of the game (example: `Yume_Nikki/RPG.RT.ldb`).
3) Rename the text file so its extension is *.easyrpg* (example: `Yume Nikki.easyrpg`).



### Known Issues

* When plugging USB-C headphones, audio isn't switched automatically if a game is already running.<br />
  To workaround it on Retroarch, you have to go into Retroarch audio settings and toggle audio output.<br />
  Menu button > Advanced menu > B button > Settings > Audio > Output > turn audio off and on again.
* Nintendo DS completely ignores USB-C headphones.
* Safe shutdown app doesn't turn off the screen once the system has been successfully shutdown.



## Credits

* cobaltgit and the [Quark OS](https://github.com/cobaltgit/Quark) team: borrowed several cores and utilities from them.
* jutleys: also borrowed things from [Tomato OS](https://github.com/jutleys/Trimui-Smart-Tomato/).
* rulerofoz: [AnotherStockMix for the Trimui Brick](https://github.com/rulerofoz/AnotherStockMix) served as inspiration for Stock Remix.
* Steward Fu: for his [tweaks to Drastic](https://github.com/steward-fu/nds) and several contributions to the handheld community.
