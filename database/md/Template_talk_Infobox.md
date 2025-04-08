From Stardew Valley Wiki

This talk page is for discussing Template:Infobox.

- Sign and date your posts by typing four tildes (~~~~).
- Put new text below old text.

<!--THE END-->

- Be polite.
- Assume good faith.
- Don't delete discussions.

## Request for Template:Infobox Modification

Hello,

I've noticed an issue with the "Template:Infobox" where the section for "Artisan Sell Prices" needs to be adjusted to ensure proper display. Below is the required modification:

The current section:

Artisan Sell Prices Base Artisan *(+40%)*

200g

250g

300g

400g

280g

350g

420g

560g

Needs to be updated to:

Artisan Sell Prices Base Artisan *(+40%)*

300g

375g

450g

600g

420g

525g

630g

840g

If you could change the value to 300 it would fix the honey wiki page, which currently displays the old mead pricing, and we got no permissions to change those values. Thank you! ArashiSensou (talk) 19:09, 4 June 2024 (UTC)

Hello, and thanks for your comment. There are **many many** things that need to change in this template, in all 12 languages. I'm working on it. margotbean (talk) 19:26, 4 June 2024 (UTC)

## Add prices of Dried Fruit

Please apply this change that adds Dried Fruit prices to the infobox, along with the necessary change in Module:Calcsellprice: add

```
	elseif (item == "dried fruit") then
		artisanprice = (25 + (baseprice * 7.5))
```

before the line

```
	elseif ((item == "jelly") or (item == "pickles")) then
```

. Edward Chernenko (talk) 08:01, 28 June 2024 (UTC)

Thank you, I will change the template in **all 12 languages** sometime within the next 7 years. margotbean (talk) 16:13, 28 June 2024 (UTC)

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=Template\_talk:Infobox&amp;oldid=173853"

Category:

- Template talk pages