From Stardew Valley Wiki

## Description

This template displays prices for items of specified qualities, formatted appropriately for the language where they appear. The image of the item is included (with any quality stars) instead of the gold icon. The size of the image is always 24px.

## Parameters

Parameter Notes First (unnamed) parameter Name of image (minus ".png") Second (unnamed) parameter Normal/base sell price of item (can be found in `ObjectInformation.xnb`)  
*or*  
Normal/base sell price of item used to make Artisan Good (see examples below)  
Note: also accepts non-numbers such as "3x base fruit price" without throwing an error quality Single quality to display.  
Defaults to all qualities (normal, silver, gold, iridium) if omitted.  
Items that exist in normal quality only do not have to specify `quality=normal` (*i.e.,* Cave Carrot, Ginger, Green Tea, Honey, Jelly, Juice, Oil, Pickles, Qi Fruit, and Tea Leaves)

*Note: Other items may be added in the future. In the meantime, specifying `quality=normal` or `quality=0` will work.*

hide Qualities to hide  
(*e.g.,* `hide=silver,gold`) pm Profession modifier  
Tiller gives a 10% bonus, so specify `pm=1.1`  
Angler gives a 50% bonus, so specify `pm=1.5`  
etc. dsv data-sort-value  
Set to `false` if the quality price(s) are displayed in a non-sortable structure (like an infobox)  
Default value is `true` (the entire parameter can be omitted if a data-sort-value is desired).

## Examples

Template Call Result `{{Qualityprice|Melon|250}}` data-sort-value="250"

250g

312g

375g

500g

`{{Qualityprice|Parsnip|35|pm=1.1}}` data-sort-value="38"

38g

47g

57g

77g

`{{Qualityprice|Ginger|60}}` data-sort-value="60"

60g

`{{Qualityprice|Goat Cheese|400|hide=normal,silver}}` data-sort-value="400"

600g

800g

`{{Qualityprice|Large Goat Milk FR|345}}` data-sort-value="345"

345g

431g

517g

690g

`{{Qualityprice|Juice|260}}`  
(The base sell price of Red Cabbage is 260,  
and the base sell price of Red Cabbage Juice is 585) data-sort-value="585"

585g

`{{Qualityprice|Purple Juice|260|quality=0}}`  
(Must specify `quality=normal` or  
`quality=0` if using a colored sprite) data-sort-value="585"

585g

`{{Qualityprice|Wine|750|pm=1.4}}`  
(The base sell price of Starfruit is 750,  
and the Artisan base sell price of Starfruit Wine is 3,150) data-sort-value="3150"

3,150g

3,936g

4,725g

6,300g

`{{Qualityprice|Honey|30}}`  
(The base sell price of a Tulip is 30,  
and the base sell price of Tulip Honey is 160) data-sort-value="160"

160g

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=Template:Qualityprice&amp;oldid=173850"

Category:

- Templates