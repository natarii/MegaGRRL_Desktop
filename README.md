# MegaGRRL Desktop
## Overview
**MegaGRRL Desktop** is a simplified, easier to assemble respin of the original MegaGRRL project. This is intended for those who wish to assemble their own with minimal surface mount soldering, or do not need portability.
## Assembly guide
[Click here for the assembly guide.](https://git.agiri.ninja/natalie/MegaGRRL_Desktop/wikis/Assembly-guide)
## Firmware changes
The portable and desktop MegaGRRL versions share a single codebase, contained in the [normal MegaGRRL repo](https://git.agiri.ninja/natalie/megagrrl). Before compiling, `main/hal.h` must be edited to specify that the desktop version is built. More details on this are available in the assembly guide.