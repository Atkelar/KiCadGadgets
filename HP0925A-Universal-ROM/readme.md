# Universal ROM Cartridge

This project is a KiCAD drawing for a universal ROM cartridge. It consists of address latches and decoders, a DIP switch block and two EEPROMs. The idea is to have all the option ROMs that the 9825 had on one cartridge - pretty much like the "B" model had - but still inside the regular expansion slot. This way, one can "emulate" any configuration of option ROMs at the push of a button....

## challenges...

After finally getting the "card enable" line set up correct in "Rev.B", I still couldn't get it to work. And even reading back the ROM had all sorts of weird results... 

 1. the first problem was my ROM reader adapter... I hooked up the IDA-Bits 8-15 in reverse, so naturally, the results were a bit... fragmented.

 2. the second issue is pretty much caused by HP. They have put a set of bus transceivers in between the system IDA bus and the expansion slots. Those decouple all 16 IDA bus lines, but all other signals are passed in "as is". No bit deal. But somewhere it seems to have gotten lost, that these are INVERTING TRANSCEIVERS! So both address and data arrive and go out from the option ROMs in a "positive logic" fashion. I set up my ROMs to handle the reversed and inverted bit pattern that the system ROM needs, so again: didn't *quite* work as expected. And that took some time to find out...

Anyhow: it works now! My system is running on an almost full complement of ROM cartridges! All I'm missing is the "mass storage" (aka "disk IO") ROM... anybody got a source of that somewhere?

<img width="1280" height="955" alt="image" src="https://github.com/user-attachments/assets/eefc4d89-4338-4e78-9e61-fe39d6f4c8bc" />
