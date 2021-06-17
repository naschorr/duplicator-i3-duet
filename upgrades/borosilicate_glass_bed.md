# Borosilicate Glass Bed Upgrade

Upgrades the existing print surface to include a larger, flatter bed that makes the entire print volume available.

## Bill of Materials
- 1x [235mm^2 Borosilicate Glass Bed](https://www.amazon.com/gp/product/B07JKGNB6W)
- 1x [200mm^2 1mm Silicone Thermal Pad](https://www.amazon.com/gp/product/B08YJNDLGM)
- 4x M3 25mm Countersunk Machine Screw
- 4x [Glass Bed Clips](https://www.amazon.com/gp/product/B08W8NXMJC)
- 4x M3 Locknuts

## Tools
- Drill
- Countersink Drill Bit
- Goo Gone
- Sharp Spatula

## Assembly
1. Remove the existing print surface, and if necessary scrape away any adhesive with the Goo Gone and a sharp spatula.
2. Remove the heated bed plate from the Y carriage. Making sure to remove the screws, washers, and springs.
3. Use the countersink drill bit to countersink the top of each of the screw holes. The countersink screws should sit very slightly proud of the heated bed's surface. Be careful not to remove too much material as the thin aluminum below the countersink can fail when tightening the screws down.
4. Reassemble the heated build plate
    - Place a M3 countersink screw through one of the bed's holes
    - Place one of the old washers on the screw, against the bottom of the bed
    - Tighten a M3 locknut on the screw until it touches the washer snugly. Don't over torque the nut as it will damage the bed.
    - Repeat for each of the four holes
5. Add a spring and a washer to each of the screws, and then lower the whole assembly back onto the Y carriage. Make sure all of the screws are properly aligned into their holes in the carriage without any binding.
6. Tighten the bed levelling thumbwheels/wingnuts onto each of the protruding screws below the Y carriage.
7. Apply the glass bed clips as necessary near each corner.
8. Update `config.g` to use the appropriate X and Y axis maxima.
9. Manually re-tram the bed, before performing a final mesh bed probe operation (`Control` > `Dashboard` > `Compensation & Calibration` > `Run Mesh Compensation (G29)`).
10. After the probing has completed, you can view the results in the height map viewer (`Control` > `Height Map`), assuming the height map plugin is enabled. Note that height maps must be activated, so that compensation can be applied. If you're using my configuration, then this is done for you.