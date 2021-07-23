# duplicator-i3-duet
Complete Duet 3 Mini 5+ based overhaul for the Duplicator i3 family of printers

Note that this repository is a work in progress, so some parts may not be compatible with the printer yet.

## Core Bill of Materials
Note that several of the links are to parts assortments, and a single assortment should cover all of the parts of that type. Obviously, you can also source parts elsewhere if desired, the linked ones are just a convenient option.

| Item | Quantity | Link | Notes |
| ---- | -------- | ---- | ----- |
| Duet 3 Mini 5+ Wifi                   | 1         | [Filastruder](https://www.filastruder.com/collections/electronics/products/duet-3-mini-5)                                     | My STLs don't allow for the ethernet cable to pass through them anywhere, so you must get the Wifi version.
| E3D V6 Hotend                         | 1         | [Filastruder](https://www.filastruder.com/products/all-metal-e3d-v6-hotend?variant=747155309)                                 |
| BLTouch (v3.1 or greater)             | 1         | [Filastruder](https://www.filastruder.com/collections/electronics/products/bltouch-automatic-bed-leveling-probe)              |
| Noctua NF-A9x14 PWM                   | 1         | [Amazon](https://www.amazon.com/gp/product/B009NQM7V2/)                                                                       | Alternatively, any 92x14mm fan will work here, I just like the performance and quietness of the Noctua. |
| Noctua NF-A4x10 FLX                   | 1         | [Amazon](https://www.amazon.com/gp/product/B009NQLT0M/)                                                                       | Alternatively, any 40x10mm fan will work here, I just like the performance and quietness of the Noctua. |
| Sunon 5015 Blower Fan                 | 1         | [Mouser](https://www.mouser.com/ProductDetail/369-MF50151VXB00UA99)                                                           |
| PTFE Tubing 2mm ID                    | 2 meters  | [Filastruder](https://www.filastruder.com/collections/e3d-spare-parts-and-accessories/products/ptfe-tubing?variant=485332121) |
| M3 6mm Socket Cap Machine Screws      | Many      | Amazon                                                                                                                        | If you've done the Z brace upgrade, then you likely have enough screws left over from that.
| M3 10mm Socket Cap Machine Screws     | Many      | Amazon                                                                                                                        |
| M3 25mm Socket Cap Machine Screws     | Many      | Amazon                                                                                                                        |
| M3 Washers                            | Many      | [Amazon](https://www.amazon.com/gp/product/B07CG9J4NC)                                                                        |
| M3 Hex Nuts                           | Many      | Amazon                                                                                                                        |
| M3 Square Nuts                        | Many      | Amazon                                                                                                                        |
| M4 12mm Socket Cap Machine Screws     | 4         | Amazon                                                                                                                        | You can salvage these from the printer's X carriage bearing block (I could be wrong, as I had upgraded to a Prusa i3 MK2 style X axis/extruder assembly years before this)
| M4 Washers                            | 4         | [Amazon](https://www.amazon.com/gp/product/B07CG9J4NC)                                                                        |
| 12 Gauge Wire                         | 2 meters  | [Mouser](https://www.mouser.com/ProductDetail/TE-Connectivity-Raychem/44A0111-12-0CS448?qs=pLY5GE0xrmJhn6WhPS46fA%3D%3D)      | 12 gauge is a bit overkill, but safety is worth it
| 12 Gauge Spade Terminal               | 2         | [Mouser](https://www.mouser.com/ProductDetail/Molex/19131-0004?qs=sLlYHtrnUedrBRMIT5hiJw%3D%3D)                               | These might need some slight filing down to fit into the terminal block
| 92mm Fan Filter Mesh                  | 1         | [Amazon](https://smile.amazon.com/ThreeBulls-Cooler-Filter-Dustproof-Computer/dp/B01N952K7P)                                  | These are 120mm, but they're easier to find, useful elsewhere, and easy to cut to shape.

## Required Tools
| Tool | Link | Notes |
| ---- | ---- | ----- |
| Terminal Crimper          | [Amazon](https://smile.amazon.com/s?k=molex+jst+crimper)                                              | Make sure it can do 26 gauge thru 12 gauge terminals
| Flush Cutter              | [Amazon](https://smile.amazon.com/Hakko-CHP-170-Micro-Cutter/dp/B00FZPDG1K/)                          |
| Wire Stripper             | [Amazon](https://smile.amazon.com/s?k=wire+stripper)                                                  |
| Drill                     | 
| 1/8 Twist Drill Bit       | [Amazon](https://smile.amazon.com/s?k=1%2F8+twist+drill)                                              | This is for cleaning up a few 3D printed holes, so low quality is fine
| Heat Gun (or a lighter)   | [Amazon](https://smile.amazon.com/s?k=heat+gun)                                                       | This is for heating up heatshrink tubing, so a lighter is totally fine
| Screw Driver Set          | [Amazon](https://smile.amazon.com/Syntus-Precision-Screwdriver-Electronics-Cellphone/dp/B071PB4RPV)   | Must contain a variety of Hex head drivers

## Printables
### Duet Case and Mount Assembly
| STL | Quantity | Notes |
| --- | -------- | ----- |
| duplicator i3 duet controller case chassis mount.stl      | 1 | 
| duplicator i3 duet controller case back panel.stl         | 1 | 
| duplicator i3 duet controller case sides.stl              | 1 | 
| duplicator i3 duet controller case cable lock.stl         | 3 | 
| duplicator i3 duet controller case fan rack.stl           | 1 | 
| duplicator i3 duet controller case left fan bracket.stl   | 1 | 
| duplicator i3 duet controller case right fan bracket.stl  | 1 | 
| duplicator i3 duet controller case front panel.stl        | 1 | 

### Extruder Assembly
All STLs only need to be printed once. The extruder body STLs should be printed out of a filament that's more tolerant of higher temperatures, like PETG.
| STL | Notes |
| --- | ----- |
| duplicator i3 duet extruder body bltouch mount.stl            | This is essentially just a normal Prusa i3 MK2 extruder body, but with a BLTouch mount grafted onto it
| duplicator i3 duet extruder body 30mm to 40mm fan adapter.stl | This will adapt the 30mm fan attachment point to allow a 40mm fan to be used instead
| duplicator i3 duet extruder x carriage ptfe clamp top.stl     | 
| duplicator i3 duet extruder x carriage ptfe clamp bottom.stl  | 
| prusa i3 mk2 extruder cover.stl                               | This is literally just the official part from Prusa, included here for convenience
| prusa i3 mk2 x carriage.stl                                   | This is literally just the official part from Prusa, included here for convenience

### X-Axis Motor Assembly
All STLs only need to be printed once.
| STL | Notes |
| --- | ----- |
| duplicator i3 duet x motor ptfe inner clamp.stl   | 
| duplicator i3 duet x motor ptfe outer clamp.stl   | 

### Y-Axis Carriage Assembly
All STLs only need to be printed once. These Y carriage STLs should be printed out of a filament that's more tolerant of higher temperatures, like PETG.
| STL | Notes |
| --- | ----- |
| duplicator i3 duet y carriage bearing block ptfe angled clamp.stl | 
| duplicator i3 duet y carriage bearing block ptfe lower clamp.stl  | 
| duplicator i3 duet y carriage bearing block ptfe upper clamp.stl  | 

### Power Supply Dock and Mount Assembly
There's three different ways to approach the power supply question:
- The default Maker Select power supply
- Upgrade to a Meanwell LRS-350-12 power supply
- Purchase a Meanwell LRS-350-12 power supply, and upgrade it with a much larger fan to be even quieter (I absolutely recommend this option!)

#### Default Maker Select Power Supply
All STLs only need to be printed once.
| STL | Notes |
| --- | ----- |
| duplicator i3 duet stock psu chassis mount.stl    |
| duplicator i3 duet stock psu dock.stl             |

#### Normal Meanwell LRS-350-12 Power Supply
All STLs only need to be printed once.
| STL | Notes |
| --- | ----- |
| duplicator i3 duet lrs 350 psu chassis mount.stl  |
| duplicator i3 duet lrs 350 psu dock.stl           |

#### Quiet Meanwell LRS-350-12 Power Supply
Take a look at the separate upgrade page [here](upgrades/quiet_meanwell_lrs_350_psu/quiet_meanwell_lrs_350_psu.md) that goes into greater detail.

## Additional Recommended Upgrades & Maintenance
- [Borosilicate Glass Bed](upgrades/borosilicate_glass_bed.md)
- [Z Braces](https://www.thingiverse.com/thing:921948)
- [Bed Levelling Thumbwheels](https://www.thingiverse.com/thing:1917422)
- [GT2 5mm Idler Pulleys](https://smile.amazon.com/gp/product/B01H3F8LUU)
