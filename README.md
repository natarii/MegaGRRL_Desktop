# MegaGRRL Desktop
## Overview
**MegaGRRL Desktop** is a simplified, easier to assemble respin of the original MegaGRRL project. This is intended for those who wish to assemble their own with minimal surface mount soldering, or do not need portability.
## Assembly guide
[Click here for the assembly guide.](https://git.agiri.ninja/natalie/MegaGRRL_Desktop/wikis/Assembly-guide) Bill of materials can be found [here](https://git.agiri.ninja/natalie/MegaGRRL_Desktop/wikis/BOM)
## Firmware flashing/changes
The portable and desktop MegaGRRL versions share a single codebase, contained in the [normal MegaGRRL repo](https://git.agiri.ninja/natalie/megagrrl). Before compiling, `main/hal.h` must be edited to specify that the desktop version is built. More details on this are available in the readme.
## PCB manufacturing considerations
The board doesn't really have anything too weird on it, but do watch out that your PCB house does the plated slots for the headphone jack correctly. The DRC rules are set for tented vias - these are preferable for aesthetics, but are otherwise not required.
## License
The schematic, PCB, and baseplate are licensed under CC BY-NC-SA 4.0. You are free to build this project for yourself or friends, but please do not sell it or misrepresent its origin. If you are interested in selling assembled players, please contact hello@kunoichilabs.dev
