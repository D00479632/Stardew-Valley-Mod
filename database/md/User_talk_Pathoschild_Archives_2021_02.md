From Stardew Valley Wiki

&lt; User talk:Pathoschild

**Please don't post any new comments on this page.**  
This is an archive of previous discussion from the old wiki. See current discussion instead.

## Contents

- 1 Template Revisions
- 2 Template:History
- 3 Content Table on Version History
- 4 Code Question
- 5 Infobox IDs
- 6 Modding Link on Main Page
- 7 Abuse Filter
- 8 SMAPI Compatibility Table
- 9 Version History
- 10 Mobile Version History 1.0
- 11 Summer Rain
- 12 Strange Capsule
- 13 Current changes table on Stardew Valley Page
- 14 Modding:Springobjects
- 15 Save file question
- 16 Four or five fingers
- 17 Unused File?

## Template Revisions

Hi Margotbean. I see you reverted my changes to a few templates (namely Template:Delete, Template:Heart event, and Template:Stub). If I understand correctly, template changes should be sync'd to all languages wikis? I'm used to each wiki maintaining its own templates, so that didn't occur to me. Does that only apply to templates which already exist on those wikis, or do I need to sync the license templates I created (and their images) too? —Pathoschild (talk) 21:24, 4 May 2017 (BST)

If the modding pages are going to be translated into other languages, then the templates need to be manually copied to those languages... I guess you're asking if you need to copy all the new templates you created to all 6 other languages, so my answer is "IMO, not yet." The whole modding area of the English-language wiki isn't 100% complete (is it?), so there's no need.

Eventually it would be ideal if all the modding pages existed in all languages, but there's no rush. Most of the other languages are still working (very slowly) on the basic pages (crops, crafting, artisan goods, cooking...)

Not that I want to discourage you if copying 5-10 templates into 6 languages is something you really really have an itch to do... But in a way, I am discouraging you, I guess, because it's too soon. Your choice. Just remember that as soon as you copy a template to another language, then make a change in English, you'll probably have to make the same change in 6 other languages. ;) margotbean (talk) 22:09, 4 May 2017 (BST)

p.s. It's only just occurred to me that we might someday find a translator who also knows mediawiki syntax and can copy the templates him/herself! That hasn't happened yet, so we're copying all the templates ourselves...

Realizing this, your question makes a lot more sense. Yes, we need to copy the templates for them because they can't/won't do it on their own, but no, it's too soon to do it ourselves. :) margotbean (talk) 22:24, 4 May 2017 (BST)

That makes sense; I won't sync the license templates then. So it's fine if I reinstate my changes to Template:Delete, Template:Heart event, and Template:Stub if I sync them to the other wikis? —Pathoschild (talk) 23:13, 4 May 2017 (BST)

I'll be brutally honest, and I'm sorry, because you're such a peach and have done so much for the SDV community. I'd rather you not add *another* template call to Template:Heart event at this point. I'd also prefer the large heading "Article Stub" to stay in Template:Stub, although showing it a 2nd time is redundant and unnecessary. I'd rather not see the boldfaced "marked for deletion" removed from Template:Delete either. That being said, if you want to make the other changes in 6 other languages, go for it. Some of them have been translated, and some haven't, I think. Have fun with that.

...Also, if you add the blurb to Template:Stub about how you can help by expanding the article (whether there's a reason given or not), rem. to include the link to edit the article. People really don't know there's an edit button at the top right of the page sometimes.

Thank you! margotbean (talk) 00:16, 5 May 2017 (BST)

Alright, I'll just leave the existing templates as they are for now. :) —Pathoschild (talk) 02:34, 5 May 2017 (BST)

## Template:History

The version history on some pages links to v1.2... can you please make some accommodation for that in Template:History? We want the pages to show 1.2 (as on the Sheep page), not 1.2.26. Thank you! It's late. Good night. margotbean (talk) 08:13, 15 May 2017 (BST)

Done! When you specify 1.2, it'll now show 1.2 but link to 1.2.26. —Pathoschild (talk) 17:05, 15 May 2017 (BST)

## Content Table on Version History

Hello, is there a way that you can improve the layout of the content table in the version history article? Since all the headlines start with a number, it might get a little bit confusing (1 1.2.30, 2 1.2.39, etc.), maybe you can add a 1**-** 1.2.30 just for this article, or would you mind if i add a **v** to the versions (v1.2.30) in the spanish wiki, since you are the author of the layout. Thanks Jhordi (talk) 15:05, 15 May 2017 (BST)

I'll remove the section numbers on that page soon. That needs a change to MediaWiki:Vector.css on all wikis, which I need Margotbean to do for me since I can't edit that page. :) —Pathoschild (talk) 17:26, 15 May 2017 (BST)

That's something only Katzeus can do; I've sent him a message already. :) margotbean (talk) 18:47, 15 May 2017 (BST)

I understand. Great, i'm looking forward to it! Jhordi (talk) 19:33, 15 May 2017 (BST)

I've adjusted the css as requested, thanks guys. Katzeus (talk) 11:00, 16 May 2017 (BST)

Thanks Katzeus! I think you accidentally skipped ru:MediaWiki:Vector.css; can you update that one too? —Pathoschild (talk) 16:46, 16 May 2017 (BST)

Oops! Missed that one - that's been updated as well Katzeus (talk) 11:03, 17 May 2017 (BST)

@Jhordi: done. :) —Pathoschild (talk) 19:09, 17 May 2017 (BST)

Great! It looks way better now :D. Thanks. Jhordi (talk) 19:35, 17 May 2017 (BST)

## Code Question

I was looking over the code for the Monoculture achievement (ship 300 of one crop) and found this:

```
if (this.farmerShipped(24, 300)  || this.farmerShipped(188, 300) || this.farmerShipped(190, 300) || 
    this.farmerShipped(192, 300) || this.farmerShipped(248, 300) || this.farmerShipped(250, 300) || 
    this.farmerShipped(252, 300) || this.farmerShipped(254, 300) || this.farmerShipped(256, 300) || 
    this.farmerShipped(258, 300) || this.farmerShipped(260, 300) || this.farmerShipped(262, 300) || 
    this.farmerShipped(264, 300) || this.farmerShipped(266, 300) || this.farmerShipped(268, 300) || 
    this.farmerShipped(270, 300) || this.farmerShipped(272, 300) || this.farmerShipped(274, 300) || 
    this.farmerShipped(276, 300) || this.farmerShipped(278, 300) || this.farmerShipped(280, 300) || 
    this.farmerShipped(282, 300) || this.farmerShipped(284, 300) || this.farmerShipped(454, 300) || 
    this.farmerShipped(300, 300) || this.farmerShipped(304, 300) || 
    (this.farmerShipped(398, 300) | this.farmerShipped(433, 300)) || //398 = Grape, 433 = Coffee Bean
    this.farmerShipped(400, 300) || this.farmerShipped(591, 300) || 
    this.farmerShipped(593, 300) || this.farmerShipped(595, 300) || this.farmerShipped(597, 300))
{
	Game1.getAchievement(32);
}
```

I added the comment *`398 = Grape, 433 = Coffee Bean`* myself, but the rest is as it was decompiled from Stats.cs by ILSpy.

My question is: Why the heck would he use a single pipe operator (3rd line from the bottom) in a sea of double pipe operators? I can't think of a good reason to use a bitwise comparison with Grape &amp; Coffee Bean while using logical comparisons with all the other crops. Can you? ???

Thanks! margotbean (talk) 03:28, 13 October 2017 (BST)

That's probably a typo when CA was writing the code. Fortunately `a || b` and `a | b` have the same effect in this case. With booleans, `|` has a higher precedence and will evaluate both sides before comparison, but neither of those matters in this case. —Pathoschild (talk) 04:51, 13 October 2017 (BST)

Right! So, no good reason for using it, just a typo. A weird, unnecessary typo... but I can live with that. Thank you for answering! margotbean (talk) 05:04, 13 October 2017 (BST)

## Infobox IDs

Hi Margotbean. I've been thinking of adding the internal object IDs to the various infoboxes like this:

Hematite An iron-based Mineral with interesting magnetic properties. Information Source: Frozen Geode Omni Geode Sell Price: 150g Gemologist Profession:  
*(+30% Sell Price)* 195g Internal data ID: object 573

That benefits players who want to use item exploits, and modders who want to look up an item. What do you think? —Pathoschild (talk) 17:19, 21 October 2017 (BST)

My instinct is that it's too much info. for the average player. Item IDs are already in the Modding section (and on the reddit, and the forums), so the info is out there for those who want it. For those who aren't cheating or modding, it's useless info.

There's really only a few items that people seem to want to cheat to get as well. Not to make fun of your example (too much), but how many users want to name their chickens "Hematite"? (Are you laughing? I hope so...) margotbean (talk) 20:04, 21 October 2017 (BST)

## Modding Link on Main Page

Hi Margotbean. Any objections to adding this link to the main page under *Gameplay*?

Modding

—Pathoschild (talk) 15:36, 25 October 2017 (BST)

No objections from me, I think it's a good idea to link to it on the main page. We should probably check with Katzeus to see if he has any thoughts, first. margotbean (talk) 15:51, 25 October 2017 (BST)

So, I made a (crappy low-quality) mockup, showing modding under gameplay as a link, and also as its own section. Which would you prefer? margotbean (talk) 16:16, 25 October 2017 (BST)

*Temporary image deleted*

The extra visibility of a separate section is nice, but I think adding it to *Gameplay* is better since there'll only be one link. —Pathoschild (talk) 16:44, 25 October 2017 (BST)

I agree - I think it looks best under gameplay vs a separate section - seems like the best place for it. I'm happy to add those links this afternoon :D Katzeus (talk) 11:09, 26 October 2017 (BST)

I've added the link already. I'm deleting the temporary image I uploaded. I thought my OCD would be bothered by the fact that the last column has one more entry than the middle 2 columns, but, no, I think it looks great. :D

I will add the link on the Chinese language wiki too, since they have the Modding:Index page and at least one other modding page translated already. margotbean (talk) 11:52, 26 October 2017 (BST)

It does look great, and works fine with responsiveness/mobile too. I think we prob could plug in a couple links in the other columns now that we have the empty space (that was the first thing I thought of too) but it doesn't look bad or unbalanced as it is right now at all! Katzeus (talk) 12:09, 26 October 2017 (BST)

Thanks! It looks perfect. —Pathoschild (talk) 17:39, 26 October 2017 (BST)

## Abuse Filter

...Still seems to be triggering for github links (at least). I could create a github template similar to the nexusmods template you created, which may allow new editors to add/modify github links. I'm happy to replace all the links to github already on the page. I know you're exceptionally busy right now, so I'm happy to help. Let me know. margotbean (talk) 20:05, 17 May 2018 (BST)

Thanks! It seems like the Nexus templates helped (I wasn't sure if they'd still be considered links), so I think a GitHub template would be useful too. —Pathoschild (talk) 21:50, 17 May 2018 (BST)

## SMAPI Compatibility Table

Hey, just wanted to pass along a note regarding one of the entries on the 1.3 SMAPI compatibility page: The entry for Junimo Artifact Dig Spots says there is an unofficial Content Patcher update available, but it links to a post for someone requesting a CP update. As far as I can tell, a CP version was never posted.

Didn't want to update the page… don't want to step on your toes and all that (also unfamiliar with editing wikis).

WoRMy (talk) 18:30, 4 June 2018 (BST) WoRMy (talk) 18:30, 4 June 2018 (BST)

Thanks for pointing that out! I couldn't find a conversion in the next few pages of the thread, so I removed the entry. —Pathoschild (talk) 03:05, 5 June 2018 (BST)

## Version History

Hey Jesse, I see that new template:version being implemented on pages that aren't yet translated into other languages. Do you have plans to add the template into the other 6 languages, and change Template:history in the other languages? I'm freaking out a bit... :D margotbean (talk) 18:01, 30 September 2018 (BST)

Yep. —Pathoschild (talk) 18:03, 30 September 2018 (BST)

Done on all wikis. I also fixed quite a few broken links (e.g. `[[Version History]]` links copied to wikis which have it under a different name). This should make it easier going forward, since `{{version}}` uses the right page name for each wiki. —Pathoschild (talk) 22:27, 30 September 2018 (BST)

So awesome, thank you! margotbean (talk) 22:39, 30 September 2018 (BST)

## Mobile Version History 1.0

Under "Changes" it says "up to computer version 1.3.28" but it links to v1.3.32 on the Version History page. Is this because I fouled up Template:Version? If so, I did it in all languages (eek!) --margotbean (talk) 19:34, 22 December 2018 (UTC)

Nope, that's a mistake in how the pages use the template — they link to `1.3` (which is always the latest 1.3.*x* version) instead of the specific version. I'll fix that. :) —Pathoschild (talk) 20:19, 22 December 2018 (UTC)

## Summer Rain

Someone posted a question on the Weather data talk page that I can't answer. Maybe you can take a look and shed some light? The only other editor of that page has been inactive for about a year... Thanks, margotbean (talk) 16:35, 18 May 2019 (BST)

The main editor is still active off-wiki; I sent them a link to the question so they can take a look. —Pathoschild (talk) 18:24, 18 May 2019 (BST)

## Strange Capsule

Hey, Pathos, I'd like to handle the Strange Capsule/Random Events details using transclusion. Meaning I'd like to have all the details on the Strange Capsule page, and transclude the entire page (minus language links) onto the Random Events page. What do you say? This will help the other languages that already have the complete Strange Capsule page; they won't have to make any changes to it, just transclude it onto the Random Events page. (The Japanese editors only just recently created the Capsule page, and now they have to change it, I feel bad!)

There is at least one detail on the SC page now that isn't on the Random Events page (the internal event being CropCircle), so maybe you would decide what should comprise the complete details, put them on the SC page, and then transclude?

Also, the witch flying over the slime hutch doesn't animate for me when in a thumbnail. Is that the case for you? (I use Chrome on Win7). Perhaps we could fix by using the hack I used on the Energy page --it's ugly code, but it may work. It "looks" like a thumbnail, but it animates and allows for a caption. Maybe good, since the original image is no bigger than the thumbnail. (Why the heck does the coop .gif animate and the slime hutch .gif not???) Argh!

Thanks, margotbean (talk) 23:39, 12 September 2019 (UTC)

Hi! I think transclusion might be confusing here since they focus on different things. If you transclude Strange Capsule into Random Events for example, the section will launch into a description of the item instead of the format used by the rest of the events (i.e. selection requirements &gt; activation requirements &gt; description). We could change the Strange Capsule page to fit (e.g. have an 'event' subsection), but then translators would need to update anyway. I think long-term it'd be better to keep a clear separation between the item page and event section so they can be expanded separately (e.g. the item page could use an infobox), but I'm not opposed if you want to try something.

The animated thumbnail issue is weird; I have no idea why it works for one but not the other. Maybe we could ask Katzeus in case it's a MediaWiki/extension issue, but feel free to add the workaround used on the Energy page. —Pathoschild (talk) 00:11, 13 September 2019 (UTC)

## Current changes table on Stardew Valley Page

I don't think the version table you recently added to the Stardew Valley article is a good addition for a few reasons.

- It's redundant, the information is available on the main page already.
- It adds PC equivalent version info, but again, this information is redundant and would need to be maintained on both version history and this page. I can see it's helpful to see this information outlined in a table, but it's not worth the trade off to maintain it imo.
- Most importantly: This information changes very frequently - especially in the case of mobile. Right now updating the template on the main page requires updating template information on twelve sites in twelve languages, this essentially doubles the amount of work required each time there's a version number change.

-- Katzeus (talk) 14:23, 4 October 2019 (UTC)

Do we need the release versions/dates directly on the main page, where only you and margotbean can update them? You wouldn't always need to update it on twelve sites yourself if other editors were allowed to update it too. Maybe we can change the design a bit to link to Stardew Valley instead, which can fit more info about the versions (e.g. multiplayer not available on mobile). Here's a mockup of how that might look. Note that we're already tracking current versions ourselves for use in modding and support (see my user page before I moved the info and User:Overlord Odin), so we could just maintain the official table instead; that means we'd generally update the info before you need to. —Pathoschild (talk) 17:30, 4 October 2019 (UTC)

I think having the release dates on the main page is pretty important - it's the landing page for the site, and the dates next to versions allow players to immediately see when the last update happened for every version. I'd argue that's more important to display then version numbers. That version template on the main page was open to all editors for a long time, but we had a string of vandalism targeting it because of where it displays (you can see in the history) - if you or anyone else would like to help keep it updated I'd be happy to grant edit permission. My only request would be if you update the version for one language, update them all - keeping the main pages mirrored is important and if we constantly have to check them all to compare version numbers it'll become a nightmare to maintain.

I looked at the tables on you and Odin's talk pages and think something like Odin's would be better utilized on the game page - it'll require updating MUCH less frequently because it doesn't display the actual build numbers (except for PC) or dates. There's a similar table on the Minecraft Wiki.

So TLDR; I'm suggesting version numbers and updated dates on the main page (and of course version history) and then a less detailed version grid in Stardew Valley (but further down the page, I also don't agree with the current placement in the article above the game summary). What do you think?

That'll split the information you have there now up, but make it easier to maintain for everyone. If you guys want/require a more detailed grid for modders reference you could make it in the modding namespace. -- Katzeus (talk) 19:41, 4 October 2019 (UTC)

Sure, I think that's a good compromise. I reworked the page so it no longer lists platform-specific versions which change often, but still lists the PC-equivalent versions which rarely change. How does that look? I'll ask Odin to add the info from his user page, so it's properly attributed in the edit history. —Pathoschild (talk) 23:10, 4 October 2019 (UTC)

Good deal - I'll get the permission thing setup and sorted for you and let you know when that part is done. -- Katzeus (talk) 10:25, 5 October 2019 (UTC)

All set - you should have that edit access now for language. Shoot me a msg if you hit any issues. -- Katzeus (talk) 10:33, 5 October 2019 (UTC)

Thanks! I can edit the page fine on all wikis now. —Pathoschild (talk) 18:42, 5 October 2019 (UTC)

## Modding:Springobjects

Page is finished. I logged out and cleared browser cache and then the page took about 10 full seconds to load. I vote for keeping it as a separate page! margotbean (talk) 00:49, 24 March 2020 (UTC)

I'm fine with that. Should we move it to something like `Modding:Object data/Sprites`? —Pathoschild (talk) 01:30, 24 March 2020 (UTC)

That sounds like a good idea to me. Are you able to suppress redirects? If so, then go for it! margotbean (talk) 18:16, 24 March 2020 (UTC)

Done! —Pathoschild (talk) 22:09, 24 March 2020 (UTC)

## Save file question

There's a question on the Saves talk page about setting the save path on Linux that you may be able to answer better than me. Thanks! margotbean (talk) 16:34, 26 April 2020 (UTC)

Thanks! I replied there. —Pathoschild (talk) 18:16, 26 April 2020 (UTC)

## Four or five fingers

"undo change: other characters in Stardew Valley are shown with five fingers" Thank you, I did not know. I'm curious which characters have five fingers and where this can be seen? Prismatic Witch (talk) 23:14, 11 October 2020 (UTC)

Some five-fingered examples are Gunther, Jas, Jodi, Leah, Maru, Robin, Shane, and grandpa. The only four-fingered cases I know of are Alex and the bear (though the Bear's Knowledge icon has five). The four fingers aren't necessarily canonical though, it might just be a mistake when drawing those two portraits. —Pathoschild (talk) 05:51, 12 October 2020 (UTC)

Thanks, I should've been able to remember at least some of those! The bear is an animal, so four fingers are not as strange there. I don't think it's canonical (like Alex would have some sort of birth defect) as that would definitely have been mentioned during some dialogue about his gridball ambitions. By the way, it does seem possible that he is actually holding the gridball between his middle and index finger with his thumb being out of view. Bit of an odd way of holding it, but that could just be him showing off his control of the ball. Prismatic Witch (talk) 12:22, 12 October 2020 (UTC)

Yeah, you could be right about the way he's holding it. I'd be fine removing that line since there's no evidence the thumb isn't just hidden off-screen. —Pathoschild (talk) 15:00, 12 October 2020 (UTC)

I've removed it. I'll also refrain from contributing further to this wiki as nearly all my edits simply get reverted. Thank you for being helpful and cooperative. Prismatic Witch (talk) 19:05, 12 October 2020 (UTC)

## Unused File?

Is **File:Android APK file location guide.png** used on the wiki (Or linked to?) I did a search for "everything" and no pages came up as having the text in the page. Thanks, margotbean (talk) 21:11, 26 December 2020 (UTC)

It's used in the commented-out instructions for Modding:Installing SMAPI on Android#MartyrPher's port. It doesn't seem like that port will be updated, so we can probably delete the file. —Pathoschild (talk) 06:14, 27 December 2020 (UTC)

Thanks! margotbean (talk) 01:22, 28 December 2020 (UTC)

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=User\_talk:Pathoschild/Archives/2021-02&amp;oldid=182560"

Category:

- Archived user pages