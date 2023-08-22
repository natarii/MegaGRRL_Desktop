# MegaGRRL Desktop
## Overview
**MegaGRRL Desktop** is a simplified, easier to assemble respin of the original MegaGRRL project. This is intended for those who wish to assemble their own with minimal surface mount soldering, or do not need portability.
## Assembly guide
[Click here for the assembly guide.](https://git.agiri.ninja/natalie/MegaGRRL_Desktop/wikis/Assembly-guide) Bill of materials can be found [here](https://git.agiri.ninja/natalie/MegaGRRL_Desktop/wikis/BOM)
## Firmware flashing/changes
The portable and desktop MegaGRRL versions share a single codebase, contained in the [normal MegaGRRL repo](https://git.agiri.ninja/natalie/megagrrl). Before compiling, `main/hal.h` must be edited to specify that the desktop version is built. More details on this are available in the MegaGRRL project repo's readme.

A simplified flashing guide is available for Windows users [here](https://git.agiri.ninja/snippets/3).
## PCB manufacturing considerations
The board is a fairly standard 2-layer board. Please ensure that your PCB manufacturer handles the plated slots on the headphone jack correctly. The DRC rules are set for tented vias - these are preferable for aesthetics, but are otherwise not required. Please note if exporting your own gerbers that the art for the top and bottom of the PCB are on layers 200 (top) and 201 (bottom). Pre-exported gerbers for JLCPCB can be found in the `gerbers/` directory.
## 3D Printing
`mgd_base.stl` is an STL file for a 3D-printable baseplate for the MegaGRRL Desktop board. This provides a nice flat bottom surface and also supports the PCB underneath areas that undergo flexing (buttons, IC sockets). The original OpenSCAD source file is also available. 100% infill is recommended, and printing with a brim may help bed adhesion. Supports are needed due to the recessed screw holes. **The STL and SCAD files have recently been updated to be sized in mm instead of mil.** Previously they required scaling before printing, but this should no longer be required. If you are using a paid 3D printing service, please double-check the size before ordering!
## License
The schematic, PCB, and baseplate are licensed under CC BY-NC-SA 4.0. You are free to build this project for yourself or friends, but please do not sell it or misrepresent its origin. If you are interested in manufacturing players for sale, please contact hello@kunoichilabs.dev
## Beware Fake Chips!

[WIP guide on detecting fake chips](https://git.agiri.ninja/natalie/MegaGRRL_Desktop/-/wikis/Identifying-fake-YM2612s)

Many of the YM2612s being sold on eBay are fake. Chips are very often remarked to make them appear new, and that has been ongoing for a long time, but recently myself and friends have received completely fake, non-working chips from multiple eBay sellers. If you are unsure about chips you received, email me a photo and I'll check them out. Also, I have had much better luck receiving legit YM3438s from eBay, so that may be the way to go. I recommend YM3438 anyway due to its improved sound quality.
