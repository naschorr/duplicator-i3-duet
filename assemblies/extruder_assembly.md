# Extruder Assembly

## Printables
All of these files should be printed in a thermally resistant filament, like PETG.

| STL | Notes |
| --- | ----- |
| duplicator i3 duet extruder body bltouch mount.stl            | This is essentially just a normal Prusa i3 MK2 extruder body, but with a BLTouch mount grafted onto it
| duplicator i3 duet extruder body 30mm to 40mm fan adapter.stl | This will adapt the 30mm fan attachment point to allow a 40mm fan to be used instead
| duplicator i3 duet extruder x carriage ptfe clamp top.stl     | 
| duplicator i3 duet extruder x carriage ptfe clamp bottom.stl  | 
| duplicator i3 duet extruder idler shaft.stl                   | WIP
| prusa i3 mk2 extruder cover.stl                               | This is literally just the official part from Prusa, included here for convenience
| prusa i3 mk2 extruder idler.stl                               | This is literally just the official part from Prusa, included here for convenience
| prusa i3 mk2 x carriage.stl                                   | This is literally just the official part from Prusa, included here for convenience

## Required Tools
| Tool | Link | Notes |
| ---- | ---- | ----- |
| Terminal Crimper          | [Amazon](https://smile.amazon.com/s?k=molex+jst+crimper)                                              | Make sure it can do 26 gauge thru 12 gauge terminals
| Flush Cutter              | [Amazon](https://smile.amazon.com/Hakko-CHP-170-Micro-Cutter/dp/B00FZPDG1K/)                          |
| Wire Stripper             | [Amazon](https://smile.amazon.com/s?k=wire+stripper)                                                  |
| Drill                     | 
| 1/8 Twist Drill Bit       | [Amazon](https://smile.amazon.com/s?k=1%2F8+twist+drill)                                              | This is for cleaning up a few 3D printed holes, so low quality is fine
| Heat Gun (or a lighter)   | [Amazon](https://smile.amazon.com/s?k=heat+gun)   
| Screw Driver Set          | [Amazon](https://smile.amazon.com/Syntus-Precision-Screwdriver-Electronics-Cellphone/dp/B071PB4RPV)   | Must contain a variety of Hex head drivers

## Bill of Materials
Note that several of the links are to parts assortments, and a single assortment should cover all of the parts of that type. Obviously, you can also source parts elsewhere if desired, the linked ones are just a convenient option.

| Item | Quantity | Link | Notes |
| ---- | -------- | ---- | ----- |
| E3D V6 Hotend                         | 1         | [Filastruder](https://www.filastruder.com/products/all-metal-e3d-v6-hotend?variant=747155309)                                 |
| Extruder Drive Gear                   | 1         | [Filastruder](https://www.filastruder.com/collections/e3d-spare-parts-and-accessories/products/hobb-goblin-5mm-id-drive-gear)
| BLTouch (v3.1 or greater)             | 1         | [Filastruder](https://www.filastruder.com/collections/electronics/products/bltouch-automatic-bed-leveling-probe)
| BLTouch Extension Cable               | 1 meter   | [Filastruder](https://www.filastruder.com/products/bltouch-1000mm-cable)
| Noctua NF-A4x10 FLX                   | 1         | [Amazon](https://www.amazon.com/gp/product/B009NQLT0M/)                                                                       | Alternatively, any 40x10mm fan will work here, I just like the performance and quietness of the Noctua. |
| Sunon 5015 Blower Fan                 | 1         | [Mouser](https://www.mouser.com/ProductDetail/369-MF50151VXB00UA99)                                                           |
| PTFE Tubing 2mm ID                    | 750mm     | [Filastruder](https://www.filastruder.com/collections/e3d-spare-parts-and-accessories/products/ptfe-tubing?variant=485332121) | This is an approximation, purchase all PTFE tubing in a single length and cut to size.
| 26 Gauge Wire                         | 7 meters  | Mouser                                                                                                                        | This is for the heatsink fan, the part cooler blower, and the extruder's thermistor
| 22 Gauge Wire                         | 2 meters  | Mouser                                                                                                                        | This is for the extruder heater itself.
| 625 Bearing                           | 1         | Amazon
| Extruder Spring                       | 2         | DIY                                                                                                                           | I ended up pulling the springs out of a couple clicky pens, and stretching them out a bit. That said, these can probably be found on ebay or aliexpress with enough persistence.
| M3 6mm Socket Cap Machine Screws      | Many      | Amazon                                                                                                                        | If you've done the Z brace upgrade, then you likely have enough screws left over from that.
| M3 10mm Socket Cap Machine Screws     | Many      | Amazon
| M3 18mm Socket Cap Machine Screws     | 2         | Amazon
| M3 20mm Socket Cap Machine Screws     | 3         | Amazon
| M3 25mm Socket Cap Machine Screws     | 1         | Amazon                                                                                                                        | I believe this one (used in step 7 of Prusa's assembly guide) can be replaced with a M3 30mm machine screw and another M3 washer.
| M3 30mm Socket Cap Machine Screws     | 3         | Amazon
| M3 40mm Socket Cap Machine Screws     | 3         | Amazon
| M3 Washers                            | 4         | [Amazon](https://www.amazon.com/gp/product/B07CG9J4NC)
| M3 Hex Nuts                           | 4         | Amazon
| M3 Square Nuts                        | 4         | Amazon
| M5 Washers                            | 2         | Amazon                                                                                                                        | Honestly, these can be printed, I'll add an STL eventually for this.
| Zip ties (4 inch)                     | 8+        | [Amazon](https://smile.amazon.com/gp/product/B01M06HTVH)

## Assembly
You can follow the [official Prusa i3 MK2 extruder assembly guide](https://help.prusa3d.com/en/guide/5-extruder-assembly_82960) for this one. Almost all extruder parts for this upgrade are derived from Prusa's designs.
