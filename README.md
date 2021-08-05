# duplicator-i3-duet
Complete Duet 3 Mini 5+ based overhaul for the Duplicator i3 family of printers

Note that this repository is a work in progress, so some parts may not be compatible with the printer yet.

## Components
These are the required components for the upgraded printer, each section goes over it's own list of parts, printables, and tools.

- [duet case and mount assembly](assemblies/duet_case_and_mount_assembly.md)
- [extruder assembly](assemblies/extruder_assembly.md)
- [power supply dock and mount assembly](assemblies/power_supply_dock_and_mount_assembly.md)
- [x axis motor assembly](assemblies/x_axis_motor_assembly.md)
- [y axis carriage assembly](assemblies/y_axis_carriage_assembly.md)

## Required Tools
| Tool | Link | Notes |
| ---- | ---- | ----- |
| Terminal Crimper          | [Amazon](https://smile.amazon.com/s?k=molex+jst+crimper)                                              | Make sure it can do 26 gauge thru 12 gauge terminals
| Flush Cutter              | [Amazon](https://smile.amazon.com/Hakko-CHP-170-Micro-Cutter/dp/B00FZPDG1K/)                          |
| Wire Stripper             | [Amazon](https://smile.amazon.com/s?k=wire+stripper)                                                  |
| Power Drill               |
| 1/8 Twist Drill Bit       | [Amazon](https://smile.amazon.com/s?k=1%2F8+twist+drill)                                              | This is for cleaning up a few 3D printed holes, so low quality is fine
| Heat Gun (or a lighter)   | [Amazon](https://smile.amazon.com/s?k=heat+gun)                                                       | This is for heating up heatshrink tubing, so a lighter is totally fine
| Screw Driver Set          | [Amazon](https://smile.amazon.com/Syntus-Precision-Screwdriver-Electronics-Cellphone/dp/B071PB4RPV)   | Must contain a variety of Hex and Philips head drivers

## Wiring
<p align="center"><img style="width: 1040px;" src="https://raw.githubusercontent.com/naschorr/duplicator-i3-duet/main/images/wiring_diagram.png"/></p>

## SD Card
The `*.g` files inside the [sd_card](sd_card/) directory contain the current state of configuration for the printer. Assuming an identical setup, these files can simply overwrite the data on your Duet's `System` directory.

## Additional Recommended Upgrades & Maintenance
- [Borosilicate Glass Bed](upgrades/borosilicate_glass_bed.md)
- [Z Braces](https://www.thingiverse.com/thing:921948)
- [Bed Levelling Thumbwheels](https://www.thingiverse.com/thing:1917422)
- [GT2 5mm Idler Pulleys](https://smile.amazon.com/gp/product/B01H3F8LUU)
