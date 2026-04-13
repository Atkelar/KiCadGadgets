# HP9825A RAM Replacement

The HP9825A "calculator"[^1] is a pretty useful machine for controlling various lab related devices, mostly but not exclusively vie the HP-IB bus. When it originally was designed, it came with a base contingent of 8k of RAM, arranged in 4k words. For a calculator that is controlling a few measurements, this seemed plenty. But naturally, requirements grew and so even the base unit offered expansions to 16k or even 24k of RAM, by means of adding a second 8k or 16k RAM PCB to the existing 8k one. Problematic here is that these RAM chips are DRAMs that are aging by now and getting hard to replace. Mostly because while the are using a 5V operating voltage, they want their CS line driven by 12V and also need a -5V bias voltage. These type of chips haven't been made in ages. Another quirk is that they have inputs and outputs on different pins *AND* different polarity: i.e. the input is normal the output is inverted. So between the chip and the bus needs to be a non-inverting buffer (or none at all) in one direction and an inverting one in the other, or else all the bits will appear flipped.

That being said: my own 9825 was acting a bit weird, even after I fixed one of the three RAM PCBs I had and while it was mostly working, it did show signs of instability. My toughts were: the RAM is going bad. Note that so far, this hasn't been confirmed yet; another possible issue presented itself but that is another project. The suspicion was just the motivation behind this project.

## Idea...

These days, we can get SRAM chips with 64k or more a dime a dozen almost. And they are fast enough to run at the 6MHz clock speed. So... why even use DRAM? Back in the day, it was mostly cost and power requirements. But when I look at the 400mA draw on the 12V rail that just hte chip select lines need... brrr! *ANY* modern SRAM will outperform these old chips by a longshot. And it would also eliminate the refresh logic required and possibly the refresh-collision wait states. So: win-win-win-win... I'll take it!

## Process...

Decoding the various schematic versions that are out there, along with the original patent and CPU documentation I'm pretty sure I have nailed down the way the memory cycle works and can confidentally rip out about 50% of the support chips that only deal with the refresh logic.

The latest circuit design went to the breadboard!

<img width="1280" height="994" alt="image" src="https://github.com/user-attachments/assets/f5f692df-6259-46bf-b549-3aa169fad97b" />

...and from there to a PCB prototype!

<img width="1280" height="1058" alt="image" src="https://github.com/user-attachments/assets/af6009d8-b3e2-4faa-bd95-0c568de92ad6" />

And: ta-da! It works!

<img width="1280" height="959" alt="image" src="https://github.com/user-attachments/assets/5631f46e-ca16-4e76-9b00-2907561825d4" />

Note that there is an unpopulated chip on the board... that is a leftover from the process that I missed; unused chip that got removed and I didn't remove it from the PCB. Whoops. Revision B here has that fixed.

## Configuration!

The address space of the 9825 is a 15-bit word space. I.e. 32k 2-byte addresses for a grand total of 64k byte. It's a bit of a twist to think in words when you are used to bytes, but this is how it works. Also, that memory space is strictly divided into the lower range for ROMs and the upper range for RAM. The CPU demands that the upper edge of addressable memory is RAM; it puts some floating point registeres there that can't be moved. The system ROM also puts all its core variables and the call stack there. This is why the upper 8k bytes are fixed on my replacement baord. It will *always* react to that. Then, you can add more 8k blocks from top to bottom to get 16, 24 and 32 kbytes of RAM. This setting has to be mirrored by the DIP switches on the CPU PCB, since those will prevent the "STM" signal to reach the RAM at all otherwise.

The important side note is: the expansion ROMs[^2] are hard coded to specific addresses. And that means that the 24kbyte version is the maximum RAM that can still use all the available expansion modules. The 32k version has a few no-go expansion modules and mixing these might cause damage to the circuitry. I'm keeping mine at 24k for that reason!

## Possible optimization?

I am not 100% sure if the "MEB" signal needs to be handled at all - it is "memory busy" I'd guess, to signal the CPU that the RAM isn't ready to process the request. It is tied to the refresh cycle and other elements, so I kept it. Since it's open collector, it should be easy enough to test: disconect the bus line and see if it still works, but right now, I'm too happy that it works at all to try something crazy like this!


[^1]: later model revisions did use the term "computer", but this is specifically for the base model "A", so I'll call it calculator anyhow
[^2]: which are a must have!
