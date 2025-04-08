From Stardew Valley Wiki

This talk page is for discussing Template:Infobox animal.

- Sign and date your posts by typing four tildes (~~~~).
- Put new text below old text.

<!--THE END-->

- Be polite.
- Assume good faith.
- Don't delete discussions.

## Proposed Change

It's been proposed that we add a field to the template specifying days to grow to maturity. It seems this value is not affected by any profession bonuses (correct me if I'm wrong), and could be added. On the other hand, we could make sure it exists in the body text of all the animals' pages instead.

If we decide to add it, should it be hidden if there is no value in it? Currently, the infobox is used on 11 pages, all of which are farm animals, so there *should* be a valid value for each animal.

How do we differentiate between time to hatch (*i.e.,* time in the incubator) and time to maturity for chickens, dinosaurs, and ducks? This is one reason I would vote "no" to the field being in the infobox, and instead in the body of the text. Please add your thoughts below. Thanks, margotbean (talk) 19:51, 12 November 2021 (UTC)

I agree the info doesn't stand out on the animal pages as there are right now, mainly because the redaction is not consistent at all between articles.

Regarding hatching, time are listed on the incubator page, whereas it is nowhere for maturing time. But there could indeed be a confusion between hatching and maturing time if only one of the two is stated in the infobox, and I don't know if both infos should belong to it (why not regularity of the produce also?).

I would suggest to adopt a consistent redaction for each farm animal.

I also wonder: is there a reason why for some it's written "sheep/ostriches **who eat every day** mature after 4/7 days", when it's not stated for cows or goats? Do they grow even if unfed?

-- Charly (talk) 20:36, 12 November 2021 (UTC)

From Animals#Produce: No animal will produce if it is not fed that day. So, the text should read the same on all farm animals' pages. Clearly there is some consistency that is lacking. I like the idea of cleaning up the text on the pages so it's more clear about incubation time and time to maturity, and making the text consistent across pages, rather than adding something to the infobox. margotbean (talk) 21:39, 12 November 2021 (UTC)

Sorry, wasn't sure where to request the information be more visible. I noticed it when looking at the chicken page compared to the cow page, where it took a few re-reads of the chicken page to spot where the information was. I'm not strongly of the opinion that it definitely should be in the infobox, even though it's a property that would be relevant to all the animals, along with incubation time, but it would be nice then if the location of the incubation and maturation time could be normalised across the animal pages. (Time taken to produce is seems fine under the produce section of those pages though). It also appears the page for the dinosaur when I last checked doesn't explicitely mention maturation time at all, so I wasn't even sure what value to put in there without testing growing a new dino. Skenvy (talk) 09:52, 13 November 2021 (UTC)

Note that incubation time apply only to oviparous (animals procuding eggs, *i.e.,* Chicken and variations, Dino, Duck, Ostrich), viviparous reproduce themselves directly (Cow, Goat, Sheep), and Rabbit cannot reproduce at all. Also this distinction is not very clearly stated through the wiki, *e.g.,* see Animals#Animal Births (I presume an Ostrich in Barn doesn't count for the game to provoke pregnancy).

Also, according to Modding:Animal data and `Content\Data\FarmAnimals.xnb`, the maturing time for Dino is 0. It surprise me a bit, since I remembered the dino to be a child before being larger, but my memories are probably wrong (especially since there is no `BabyDinosaur` file in `Content\Animals` – neither `BabyDuck` tho).

And I found the formula determining the selling value too: `base price * (friendship / 1000 + 0.3)` (base price is the same as Marnie selling, same for all chicken, 1000 for Dino, 16000 for Ostrich). So it's `x0.3` at lowest and `x1.3` at max.

Raw game code (`Stardew Valley.exe\FarmAnimal.cs::getSellPrice`):

```
public int getSellPrice()
{
	double num = (double)NetFieldBase<int, NetInt>.op_Implicit((NetFieldBase<int, NetInt>)(object)friendshipTowardFarmer) / 1000.0 + 0.3;
	return (int)((double)NetFieldBase<int, NetInt>.op_Implicit((NetFieldBase<int, NetInt>)(object)price) * num);
}
```

I'm also not a big fan of the Animals page, which is very talkative. I feel like Coop and Barn animals sections should be merged into a table with link to each individual animal page, and maybe some more infos for the sake of normalization, and the Animal Care section put below (when I look for the page, my priority is to see the Farm Animals list, for which right now I have to scroll down *a lot*. Also some things could be hidden behind *Details* tag in the Produce sub-section).

-- Charly (talk) 12:09, 13 November 2021 (UTC)

So it seems we agree to place the info in the body of the pages, and make the pages read consistently. We can create a section heading called "Maturity" or "Incubation and Maturity"... or we can place the information in the header text (the text that appears above the table of contents), or we can make sure it appears under "Produce" on every page. I don't have a strong opinion about any of them, although adding a separate heading for one or two sentences may be too much.

Perhaps in lieu of a separate heading, we add a line of boldfaced text to the intro paragraph, like so:

**Incubation**  
\[Animal name] will hatch from an incubator after x days

**Maturity**  
\[Animal name] will grow to maturity in x days, if fed each day.

Thoughts? margotbean (talk) 20:37, 13 November 2021 (UTC)

Quick thought: I feel that a separate heading would be overkill. To me hatching should belong to the intro as it is a way to obtain the animal, and maturity probably to the *Produce* section (but both on the intro as suggested by Margotbean could be possible also). At first I thought about something as follows.

- Wording suggestion for Intro: *A &lt;Animal name&gt; is a farm animal living in a \[\[&lt;Animal building&gt;]] \[or better]. It can be \[purchased at Marnie's Ranch for &lt;price&gt;, or] obtained by placing a &lt;Animal egg&gt; in an \[Ostrich] Incubator, taking **&lt;x&gt; days to incubate**.* Or, at the end for viviparous: *It can be purchased at Marnie's Ranch for &lt;price&gt;. &lt;Animal name&gt;s can \[not] reproduce themselves* ("not" is for rabbits).
- Wording suggestion for Produce: *&lt;Animal name&gt; will grow to **maturity after &lt;x&gt; nights**, if fed each day. A mature &lt;Animal name&gt; will **produce \[\[&lt;Animal product&gt;]] every &lt;y&gt; days** &lt;additional conditions and deluxe product&gt;.* Then on another line, Product selling, processing, hatching. I would also suggest to add a "Processed" column in each table in this section, with the icon and price of the item if processed.

I thought of *maturity in &lt;x&gt; days* at first but I feel that speaking about nights is more precise. I also was hesitant about the bolding on *&lt;x&gt; days to incubate*. Wording may be improved, my English is not from the uttermost elegance, but I feel that plain sentences with bolding could be clearer here.

-- Charly (talk) 01:23, 14 November 2021 (UTC)

I've started the process of rewriting by adding the info to the Chicken page, since it seems to be the worst offender in this issue. I personally don't think boldfacing is required, as long as the information is on the page in shorter paragraphs. Someone else can pick up where I left off, if they want to. margotbean (talk) 18:35, 14 November 2021 (UTC)

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=Template\_talk:Infobox\_animal&amp;oldid=134828"

Category:

- Template talk pages