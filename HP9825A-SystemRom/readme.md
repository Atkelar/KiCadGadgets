# HP 9825A System ROM PCBs

The folder contains two KiCAD projects for the required two PCBs. Note: PCB thickness for the main carrier PCB should be 1.6-1.8mm for the socket to work, the ROM carrier should be as thin as possible, e.g. 1mm or even 0.8mm...

## Background Info

The HP 9825A desktop calculator/computer came with a system ROM cartridge. The ROMs inside of which are deteriorating and might need replacing. This module is a way to pick the components of the original PCB (the revision that has six ROM chips and no longer a 12V driver! If there are transistors on your PCB, you might need to double check the components!)

The carde edge connector can be desoldered and should fit to the new PCB, I recomment soldering two outer pins "inside the try" to make for a good fit. The bank decoder IC can be omitted. The jumper can be set to pick the lower or upper half of the 32k ROM chips. That way, one can have the original ROM in one half and a custom ROM in the other half of the chips.

The second PCB is the carrier for the ROM chips, including sockets. It is connected 1:1 via 40 connections, the simplest way is to use a 2-row pin header. Solder to the ROM-sockets first, then the PIN header and - again, inside the tray! - solder two outer pins into the control PCB for optimal spacing. The ROM PCB should be as low inside the tray as possible, so some clipping of ROM socket pins might be in order.

The ROM itself is within the first 12k-word address space, i.e. 12k in both ROMs. I used two to make the 16-bit access path possible, and these are the ROMs I had in my drawer. Optimization possible? Sure! Let me know if you have a go at it! :)
