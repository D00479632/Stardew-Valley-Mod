From Stardew Valley Wiki

This talk page is for discussing Template:Qualityprice.

- Sign and date your posts by typing four tildes (~~~~).
- Put new text below old text.

<!--THE END-->

- Be polite.
- Assume good faith.
- Don't delete discussions.

## Calculation Change from April 29 2021

Please explain the nature of the calculation problem that resulted in incorrect amounts, and give an example. Also explain why this change corrects the problem. It seems that the truncation must be shifted by one decimal place so that intermediate values have one digit greater accuracy than before. Why is only one digit sufficient? And why is it necessary?

From day one on this wiki there were always problems with results produced by the templates, until NebulousMaestress finally fixed them about 5 months ago. What is it about v1.5 that has introduced something that worked completely in v1.4? Giles (talk) 05:12, 30 April 2021 (UTC)

See Template talk:Artisan below. Zendowolf (talk) 04:41, 1 May 2021 (UTC)

Ah, I see. Thanks. This is truly strange. Giles (talk) 02:38, 9 May 2021 (UTC)

## Wrong prices

(Note: I copied this discussion over from Template talk:Artisan, since Template:Artisan has been marked for deletion. Zendowolf (talk) 22:08, 5 May 2021 (UTC))

I noticed on some pickles that the pricing is off by 1 gold (e.g. Garlic and Ginger). For example Garlic regular is 60g. Pickled Garlic is 2 x 60 + 50 = 170. Still good. But then the artisan: multiplier 170 x 1.4 = 238. But the formula and thus infobox spits out **237g** Weird! Dubesor (talk) 03:49, 28 April 2021 (UTC)

This problem has plagued the wiki since its inception! On the old wiki, a user rewrote Template:infobox to supposedly fix the problem... I guess it didn't work for all cases. The underlying problem is that the wiki can't replicate C# code, and the equation for calculating artisan sell prices is a bit convoluted in the game. You can look at the old talk page to see the equation at that time. Anyway, it's a long-standing problem with no simple fix. :( margotbean (talk) 18:00, 28 April 2021 (UTC)

The old talk page claims that \[* 14 / 10.0] is a workaround for \[* 1.4], but that's only used here for wine, not pickles. Zendowolf (talk) 19:54, 28 April 2021 (UTC)

None of that got implemented, afaik. It's just background on the problem. margotbean (talk) 20:54, 28 April 2021 (UTC)

I realize now this template is not the problem. It returns a correct value when called. The problem appears to be in Template:Qualityprice. If I call that template directly, I get an incorrect value. So it looks like it's not necessary to decipher all the complicated stuff Template:Infobox is doing. Zendowolf (talk) 21:27, 28 April 2021 (UTC)

Update: I have a version of that template that works with the few values I've given it (it returns 238 with the above inputs, for example). Not a very comprehensive test, really. Should I push it out to the world and see if it breaks anything? (See User:Zendowolf/Sandbox/Qualityprice) Zendowolf (talk) 21:50, 28 April 2021 (UTC)

I'm sorry, I thought I read that you didn't do comprehensive testing, but wanted to know if you should push an update that could affect thousands of pages in 12 languages. I must be dreaming or something. 🤔margotbean (talk) 02:43, 29 April 2021 (UTC)

No, I was not suggesting that we propagate an untested change to all 12 languages.

Here's the thing, I do not have the resources to do what I would consider a comprehensive test: set up a test server and copy everything over, before making the change there and testing it. Can you set up a test server?

The alternative, copying all the relevant templates down to a sandbox area and editing them all to point to each other rather than the real templates, is too messy to contemplate. You don't pay me enough to do that.

So I took a step back. It's a really simple change. The chances of it causing a problem seem extremely small. The possibility of recovery if there is a problem seem very high: Wikimedia is designed to revert changes quickly and easily. So we make the changes to the English-language wiki, at a time when we can monitor it. Make sure everything is as expected and there are no unforeseen side-effects. If it breaks something, we revert it. Back to the drawing board. If it works as expected, maybe we give it a little time to reveal any surprises. Then in due course, we propagate it to the other languages.

A less cautious person probably would've already made the changes. It probably would be fine.Zendowolf (talk) 07:50, 29 April 2021 (UTC)

The last time I made a change to the equation, I fixed half the items and broke the other half. It was a wash. This is why I require comprehensive testing, more than just 4 items. You don't need to set up a test server to do comprehensive testing. There are two methods:

1. There is a link at the bottom of every template page that says "Preview page with this template" so you can preview changes before committing them.
2. The old-fashioned way is to add "noinclude" tags at the bottom of the template, then add all items affected, then preview the change and check them all for accuracy.

In this way, we can be sure we're not just shifting the "off by one" problem from existing items to other items that are now correct. margotbean (talk) 18:47, 29 April 2021 (UTC)

I did a fair bit of regression testing using the method you described. The only differences I found were cases where the immediate problem had been fixed. Then I committed the changes because to abandon them at that point would invalidate the tests. Zendowolf (talk) 21:50, 29 April 2021 (UTC)

GJ on fixing that! I was honestly too confused how the error came to be, before I posted the the topic it took me like 10 minutes to even find a suiting template that could be responsible :D Dubesor (talk) 08:19, 6 May 2021 (UTC)

## Update

This module should be updated since they added Dehydrator and Fish Smoker. 群星之尘 (talk) 14:40, 13 April 2024 (UTC)

That sounds like a fun project, and I need to get back into coding. Where do I start? I can try hacking out some simple tables on my userspace for testing layout, but I don't think I am even allowed to modify the template without margotbean's permission, or copy the infobox template to my userspace. (I mean, what could I do, when I have time, probably tuesday) Spriteless (talk) 13:55, 15 April 2024 (UTC)

Read and digest Help:Editing first. Become familiar with mediawiki syntax. After that, if you have time to change all 12 languages, then check back and we can discuss. Thanks! margotbean (talk) 17:59, 15 April 2024 (UTC)

I'd like to bring up updating this template and its associated Module:Calcsellprice again, since the Stardew Valley Fair Grange Display, Forage, and Fruits tables cannot be updated to 1.6 without it. (I also think the Fish table may benefit from an Artisan Good Sale Price column, but that one already has a ton of columns.) From what I see, the Module page could have

`elseif ((item == "dried mushrooms") or (item == "dried fruit")) then artisanprice = math.floor(25 + (baseprice * 7.5))`

`elseif ((item == "smoked fish") then artisanprice = (baseprice * 2)`

added below the roe calculation. Additionally, Raisins have a flat price, so

`elseif (item == "raisins") then artisanprice = 600`

could be added to the note below the Truffle Oil line (though that 600 would just be manually inputted onto the appropriate pages anyways).

As for the Template, I think the only update that could be useful is adding Dried Fruit, Dried Mushrooms, and Raisins to the lines that suppress their silver/gold/iridium sale prices, as the Dehydrator only ever produces normal quality items. Also, since Smoked Fish takes the Fisher and Angler professions into account, the relevant profession modifiers are pm=1.4 (Artisan), pm=1.75 (Artisan + Fisher), and pm=2.1 (Artisan + Angler). I don't believe any change I've listed here will break the template/module, but I'll leave that up to admin discretion since they're used in so many places. Bluestblur (talk) 00:00, 7 June 2024 (UTC)

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=Template\_talk:Qualityprice&amp;oldid=172202"

Category:

- Talk pages