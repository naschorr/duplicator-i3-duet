# Quiet Meanwell LRS-350-12 Power Supply

Upgrades the default 12v power supply to a Meanwell LRS-350-12, with a larger, quieter fan. Note that this assembly uses the same chassis mount as the plain Meanwell LRS-350 power supply upgrade. This upgrade requires opening up the power supply, so obviously be careful and don't do anything dangerous while you're in there. If you're not comfortable with working around (potentially) charged capacitors then don't attempt this upgrade.

## Bill of Materials
| Item | Quantity | Link | Notes |
| ---- | -------- | ---- | ----- |
| Meanwell LRS-350-12 Power Supply  | 1 | [Mouser](https://www.mouser.com/ProductDetail/709-LRS350-12)                                      |
| Noctua NF-A9x14 PWM               | 1 | [Amazon](https://smile.amazon.com/gp/product/B009NQM7V2/)                                         | Alternatively, any 92x14mm fan will work here, I just like the performance and quietness of the Noctua.
| 4 Pin to 2 Pin Fan Adapter        | 1 | [Amazon](https://smile.amazon.com/s?k=4+pin+to+2+pin+fan+adapter)                                 | The Noctua NF-A4x10 FLX listed in the main bill of materials should come with a 3 pin to 2 pin adapter, which can be cut to allow a 4 pin header to connect. Note that I had to swap the order of the pins in the 2 pin end of the adapter. Alternatively you can purchase a new one.
| M3 6mm Socket Cap Machine Screws  | 4 | Amazon                                                                                            | If you've done the Z brace upgrade, then you likely have enough screws left over from that.
| M4 6mm Socket Cap Machine Screws  | 2 | Amazon                                                                                            | You can salvage these (non socket cap) from the printer's Y axis bearing block during the upgrade.
| M4 Washers                        | 2 | [Amazon](https://smile.amazon.com/gp/product/B07CG9J4NC)                                          |
| 92mm Fan Filter Mesh              | 1 | [Amazon](https://smile.amazon.com/ThreeBulls-Cooler-Filter-Dustproof-Computer/dp/B01N952K7P)      | These are 120mm, but they're easier to find, useful elsewhere, and easy to cut to shape.
| Zip ties                          | 2 | [Amazon](https://smile.amazon.com/AmazonBasics-Multi-Purpose-Cable-Ties-200-Piece/dp/B087MKMSDY)  |

## Required Tools
| Tool | Link | Notes |
| ---- | ---- | ----- |
| Screw Driver Set  | [Amazon](https://smile.amazon.com/Syntus-Precision-Screwdriver-Electronics-Cellphone/dp/B071PB4RPV)   | Must contain a variety of Hex and Phillips head drivers

## Printables
All items can be printed with a lower temperature filament, like PLA.
| STL | Quantity | Notes |
| --- | -------- | ----- |
| duplicator i3 duet lrs 350 psu 92mm fan case.stl | 1 | This is the new outer case for the power supply, with a mounting solution for a 92x14mm fan.
| duplicator i3 duet lrs 350 psu 92mm fan dock.stl | 1 | This is the revised dock that the power supply (with case) slides into
| duplicator i3 duet lrs 350 psu 92mm fan clip.stl | 4 | These are the clips that screw into the outer case which hold the fan in place

## Assembly
Here's what the almost-completed 92mm fan case assembly should look like, with the fan, filter mesh (not seen), and fan clips installed into the fan case. All that's left to do is to screw the newly printed case and the original metal case together with the four original screws.

<p align="center"><img src="https://raw.githubusercontent.com/naschorr/duplicator-i3-duet/main/upgrades/quiet_meanwell_lrs_350_psu/images/assembly_0.jpg"/></p>
