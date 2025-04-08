From Stardew Valley Wiki

The doc below may be outdated. It will be updated soon.

## Contents

- 1 Description
- 2 Use
- 3 Example
  
  - 3.1 Map with 3 locations
  - 3.2 Map with Island Shown

## Description

This template is used to insert a player icon over a map of the game. It's used to generate dynamic location markers over the game map image for the site.

## Use

This template can be used by entering the following onto a relevant page. The x-and y-coordinates give the placement of the player's head on the map.

The first x- and y-coordinates are unnamed, and must appear 1st and 2nd in the template. If width is specified, it must be the 3rd parameter specified.

```
{{map
|x-coordinate (left-inset)
|y-coordinate (top-inset)
|width (optional, defaults to 400)
|loc2x = x-coordinate of 2nd location for player head (optional)
|loc2y = y-coordinate of 2nd location for player head (optional)
|loc3x = x-coordinate of 3rd location for player head (optional)
|loc3y = y-coordinate of 3rd location for player head (optional)
|loc4x = x-coordinate of 4th location for player head (optional)
|loc4y = y-coordinate of 4th location for player head (optional)
|island = (Optional, true to show map with Ginger Island)
}}
```

## Example

Example formatting would be

```
{{map|100|100}}
```

Result:

For a smaller map use

```
{{map|100|10|200}}
```

Result:

### Map with 3 locations

```
{{Map|200|150|loc2x=276|loc2y=54|loc3x=96|loc3y=130}}
```

Result:

### Map with Island Shown

```
{{Map|360|214|island=true}}
```

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=Template:Map&amp;oldid=178840"

Category:

- Templates