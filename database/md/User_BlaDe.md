From Stardew Valley Wiki

## Fish Size and Quality

Note: This has been copied fron Nebulous Maestress's user page from the old wiki.

The following table provides the predicted fish size and quality, based on Fishing Zone and player Fishing level. There's a random component to the calculation, meaning there's a range of possible sizes.

Fishing Zone Fishing Level fFishSize Fish Quality (% chance) Perfect Fish Size (inches) min max Base S/G G/I Sardine Herring 1 0-1 0.04 0.22 100 0 0 2 - 4 9 - 11 1 2-3 0.07 0.22 100 0 0 2 - 4 9 - 11 1 4-5 0.11 0.22 100 0 0 3 - 4 10 - 11 1 6-7 0.14 0.22 100 0 0 3 - 4 10 - 11 1 8-9 0.18 0.22 100 0 0 3 - 4 11 1 10-11 0.22 0.26 100 0 0 4 11 - 12 1 12-13 0.25 0.31 100 0 0 4 - 5 12 1 14 0.29 0.35 67 33 0 5 12 - 13 2 0-1 0.07 0.44 73 27 0 2 - 6 9 - 14 2 2-3 0.14 0.44 67 33 0 3 - 6 10 - 14 2 4-5 0.22 0.44 56 44 0 4 - 6 11 - 14 2 6-7 0.29 0.44 33 67 0 5 - 6 12 - 14 2 8-9 0.36 0.44 0 100 0 5 - 6 13 - 14 2 10-11 0.43 0.53 0 100 0 6 - 7 14 - 15 2 12-13 0.50 0.62 0 100 0 7 - 8 15 - 16 2 14 0.58 0.70 0 67 33 8 - 9 15 - 17 3 0-1 0.11 0.66 42 57 1 3 - 9 10 - 16 3 2-3 0.22 0.66 27 71 1 4 - 9 11 - 16 3 4-5 0.32 0.66 3 95 2 5 - 9 12 - 16 3 6-7 0.43 0.66 0 98 2 6 - 9 14 - 16 3 8-9 0.54 0.66 0 95 5 7 - 9 15 - 16 3 10-11 0.65 0.79 0 10 90 9 - 10 16 - 18 3 12-13 0.76 0.92 0 0 100 10 - 12 18 - 20 3 14 0.86 1.00 0 0 100 11 - 13 19 - 21 5 0-1 0.18 1.00 20 39 41 3 - 13 11 - 21 5 2-3 0.36 1.00 0 49 51 5 - 13 13 - 21 5 4-5 0.54 1.00 0 32 68 7 - 13 15 - 21 5 6-7 0.72 1.00 0 0 100 9 - 13 17 - 21 5 8-9 0.90 1.00 0 0 100 11 - 13 19 - 21 5 10-11 1.00 1.00 0 0 100 13 21 5 12-13 1.00 1.00 0 0 100 13 21 5 14 1.00 1.00 0 0 100 13 21

Definitions:

- **Fishing Zone**: also known as clearWaterDistance, or tiles from nearest land.
- **S/G**: gold-quality fish if cast is perfect; silver-quality fish otherwise
- **G/I**: iridium-quality fish if cast is perfect; gold-quality fish otherwise
- **fFishSize**: the fractional fish size (range 0 to 1), which is the primary output of the game code equations. fFishSize directly determines the fish quality, but is only one factor in the final fish size.
  
  - Actual fish size (for a perfect fish) will be:
    
    ```
    Size = fFishSize * (maxFishSize-minFishSize) + minFishSize + 1
    ```

Where `maxFishSize` and `minFishSize` are the raw values from the game data files.

Notes:

- Fishing level includes any buffs
  
  - (In version 1.3, buffs past level 10 were ignored by this calculation).
- The size ranges shown are only valid for perfect casts. Sizes will generally be smaller on non-perfect casts.
- Fishing Zone=4 has been excluded because it does not happen

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=User:BlaDe&amp;oldid=134804"