From Stardew Valley Wiki

## Description

This template displays an infobox for cooked items (and some crafted items). Its syntax provides a way to transclude the information onto other pages, using Template:RecipeRow.

**Do not use this on your user page. It is reserved for content pages.**

The health and energy values are calculated from the "edibility" parameter. These are the actual gains when a cooked item is consumed in-game, which are not always the same as the hover text values.

## Parameters

Parameter Notes name Name of item/name of page image Name of image, including extension description In-game description of item (Use Template:Description) source Source of item (*e.g.,* \[\[Crafting]])  
Optional parameter; defaults to Cooking if omitted. buff Buffs given when consuming the item duration Duration of buff(s) dsvduration data-sort-value for duration of buffs (Format:mmss)  
Optional, but tables that transclude items that use this template will not sort correctly without it edibility Found in `ObjectInformation.xnb` sellprice Found in `ObjectInformation.xnb`. Use only raw unformatted numbers recipe Recipe source(s) ingredients Ingredients produces Use for crafted items that produce &gt;1 item per craft qiseasoning Calculates gold quality values for health, energy, and sell price  
Must be set to false for all non-cooked items health Optional parameter, use for items whose health differs from the normal calculation (*e.g.,* Bug Steak)

## Example

```
{{Infobox cooking
|name         = Fried Mushroom
|image        = Fried Mushroom.png
|description  = {{Description|Fried Mushroom}}
|buff         = {{name|Attack|+2}}{{name|Defense|+4}}
|duration     = 7m
|dsvduration  = 0700 
|edibility    = 54
|sellprice    = 200
|recipe       = {{NPC|Demetrius|Mail - 3+ [[File:HeartIconLarge.png|16px|link=]]}}
|ingredients  = {{name|Common Mushroom|1}}{{name|Morel|1}}{{name|Oil|1}}
}}
```

Fried Mushroom

Earthy and aromatic. Information Source Cooking Buff(s) Attack (+2) Defense (+4) Buff Duration 7m Energy / Health

135

60

Sell Price

200g

Qi Seasoning

243

109

300g

Recipe Recipe Source(s)

Demetrius (Mail - 3+ )

Ingredients Common Mushroom (1) Morel (1) Oil (1)

## Example Syntax for use with Template:RecipeRow

```
<onlyinclude>{{{{{1|Infobox cooking}}}
|name            = Lucky Lunch
|image           = Lucky Lunch.png
|description     = {{Description|Lucky Lunch}}
|buff            = {{name|Luck|+3}}
|duration        = 11m 11s
|dsvduration     = 1111
|edibility       = 40
|sellprice       = 250
|recipe          = {{CookingChannel|28 Spring, Year 2}}
|ingredients     = {{name|Sea Cucumber|1}}{{name|Tortilla|1}}{{name|Blue Jazz|1}}
}}</onlyinclude>
```

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=Template:Infobox\_cooking&amp;oldid=146664"

Category:

- Infobox templates