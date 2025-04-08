From Stardew Valley Wiki

## Description

This template displays a grid of energy and health values for an edible item.

## Parameters

Parameter Notes First (unnamed) parameter Name of image (minus ".png") Second (unnamed) parameter Edibility of item (can be found in `ObjectInformation.xnb`)  
Items with a negative edibility will display the poison icon instead of the energy icon. quality Single quality to display.  
Defaults to all qualities (normal, silver, gold, iridium) if omitted.  
Items that exist in normal quality only do not have to specify `quality=normal` (*i.e.,* Cave Carrot, Ginger, Green Algae, Green Tea, Juice, Oil, Qi Fruit, Sap, and White Algae)

*Note: Other items may be added in the future. In the meantime, specifying `quality=normal` will work.*

hide Qualities to hide  
(*e.g.,* `hide=silver,gold`) showitem Set to `true` to display the image of the edible item dsv data-sort-value  
Set to `false` if the energy &amp; health values are displayed in a non-sortable structure (like an infobox)  
Default value is true (the entire parameter can be omitted if a data-sort-value is desired). health Use to override the normal calculation for health, when the normal formula does not apply (*e.g.,* for Bug Steak and Oil of Garlic)

## Examples

Template Call Result `{{EdibilityGrid|Melon|45}}` data-sort-value="45"

113

50

158

71

203

91

293

131

`{{EdibilityGrid|Melon|45|showitem=true}}` data-sort-value="45"

113

50

158

71

203

91

293

131

`{{EdibilityGrid|Parsnip|10}}` data-sort-value="10"

25

11

35

15

45

20

65

29

`{{EdibilityGrid|Ginger|10}}` data-sort-value="10"

25

11

`{{EdibilityGrid|Goat Cheese|50|hide=normal,silver}}` data-sort-value="50"

225

101

325

146

`{{EdibilityGrid|Large Goat Milk JA|35|showitem=true}}` data-sort-value="35"

88

39

123

55

158

71

228

102

`{{EdibilityGrid|Juice|30}}` data-sort-value="30"

75

33

`{{EdibilityGrid|Wine|20}}` data-sort-value="20"

50

22

70

31

90

40

130

58

`{{EdibilityGrid|Holly|-15}}` data-sort-value="-15"

−37

0

−52

0

−67

0

−97

0

`{{EdibilityGrid|Bug Steak|18|quality=0}}`

Missing `health` parameter; Shows incorrect health value

data-sort-value="18"

45

20

`{{EdibilityGrid|Bug Steak|18|health=30|quality=0}}` data-sort-value="18"

45

30

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=Template:EdibilityGrid&amp;oldid=146399"

Category:

- Templates