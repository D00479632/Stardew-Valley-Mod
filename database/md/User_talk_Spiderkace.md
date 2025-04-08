From Stardew Valley Wiki

This is Spiderkace's talk page, where you can send messages and comments to Spiderkace.

- Sign and date your posts by typing four tildes (~~~~).
- Put new text below old text.

<!--THE END-->

- Be polite.
- Assume good faith.
- Don't delete discussions.

## New Editing

Thanks for coming to my TED talk. I'm Spider, not necessarily new to Stardew, but very interested in code. After tearing apart some of the Game Code and Data\\(files), I've found some inconsistencies in the wiki that I'm hoping to fix while working on my own interactive guide. Please use or create new topics

## Project for you?

Simply put: which dialogue portrait is used when a villager is gifted a loved/liked/neutral/disliked/hated item?

The English wiki doesn't match any other language's wiki because the EN wiki was updated after v1.5. Based on memory, the main change was from "Angry" or "Annoyed" to "Concerned" portraits for hated gifts. Perhaps also from "Concerned" to "Neutral" portraits for neutral gifts. Something like that.

I tried to verify the changes in-game, but in some cases the neutral portrait is almost indistinguishable from the standard portrait. I started to dig into the game code, but ran out of time when more pressing things came up.

Areas to research:

- Modding:Dialogue#Portrait\_commands
- `Dialogue::getPortraitIndex` in the game code
- Unpacked NPC portrait files in `Data\Portraits`
- The naming conventions used on the wiki for individual portraits (see Category:NPC images)

You can look at a villager's page history *or* compare the page in English with the page in another language to see the differences in portraits used in the "Gifts" section of the page.

I guess that's it, if you have any questions at all, please leave a comment here. If I've forgot anything, apologies! And, there's no pressure at all, you can ignore this completely if you wish for whatever reason, no problem.

Thanks!! margotbean (talk) 19:59, 9 November 2022 (UTC)

My main question is: When you say Standard Portrait, what are you referring to? Wouldn't the Neutral portrait always be their "standard"? I notice on Abigail, the Abigail Neutral.png is actually her $6, where Neutral is $0 (Abigail.png). Caroline Neutral.png is actually Caroline Unique $3 (her unique is her angry). That being said... I've tested Loved, Liked, Neutral, Dislike, and Hated gifts on all giftable NPCs and referencing **Game\\Portraits** and have a clear idea of what's happening and can make progress tomorrow. I have notes so I can get to work on this tomorrow pending your go-ahead. **There's a lot so bear with me...**

Many Category:NPC\_images are inconsistent. Many have a (NPC) Neutral.png which is $3, $6, etc. Some have labels of (NPC) Neutral.png and some are just (NPC).png. There are numerous inconsistencies regarding Romanceable and Non-romanceable characters in regard to the $3+ naming conventions, as characters like Demetrius Annoyed.png would be a romanceable character’s $4/$L. My recommendations, should you allow me:

Come up with a standardized naming convention

- Either label all “Standard” images as "Neutral" or remove "Neutral" from all “Standard” images. These two should be one and the same. I would personally include Neutral for all.
- Label **ALL** images with it’s respective **$#** symbol so **people looking at Category:NPC\_images in the future can discern** which image in **Game\\Portraits** is the one being referenced. Thinking something like *Abigail Neutral $0.png*, *Abigail Neutral $k.png*, or swap the "$" for an "S" if the wiki doesn’t like it. Perhaps even *$0 Abigal Neutral.png* to keep images in order since the wiki auto-alphabetizes.
- Since "$0", "$1", and "$2" are **ALWAYS** consistently Neutral, Happy, and Sad, label the images as such and remove the *Concerned* tag for "$2". Similarly, for **romanceable** characters we should continue the normal naming convention of "Unique" for "$3", "Love" for "$4" (*removing blush*), and "Anger" for "$5" (*removing annoyed*). This would be in line with the code found at Lines 13:23 of Game::Dialogue.cs. Exception to this could be "Unique/$3/$u".
- For **non-romanceable characters**, continue the "$0", "$1", and "$2" naming convention and label everything else as best suited by the image. For example, Kent’s "Angry" is in the "Unique/$3/$u" slot, but it makes much more sense for it to be "Angry". Some characters have an "Annoyed" *and* "Angry", and some characters like Dwarf and Wizard only have 1 or 2 images.
- We should include all images from the file at Game\\Portraits even if they are duplicates and they should follow the naming convention above.

My gift testing concluded (Dwarf always uses Neutral/$0/$k):

- Love always uses Happy/$1/$h except - Evelyn uses Neutral OR $3 (same image)
- Like always uses Happy/$1/$h.
- Neutral always uses Neutral. Some weird pieces occur:

<!--THE END-->

- Maru’s $0 and $7 are the same
- Penny’s $0, $5, and $8 are the same
- Sandy’s $0 and $3 are the same
- Elliot’s $0, $3, and $6 are the same
- Harvey’s $0, $6, and $10 are the same
- Sebastian’s $0, $3, and $6 are the same

<!--THE END-->

- Dislike always uses Concerned/Sad/$2/$s
- Hate always uses Concerned/Sad/$2/$s except - Pam uses Unique/$3/$u (in wiki as Anger)

With your approval, I can start work on this tomorrow, or respond to a specific bullet point and we can brainstorm. I would comb through the page of each NPC to verify the "Standard", Gifts, and Portraits (which I would not include duplicates from *Game\\Portraits'*) are all displaying correctly (and in order). I have familiarized myself with the image upload and re-upload process as well. I have sourced information from game testing, **Game\\Portraits**, and **Game::Dialogue.cs**, and received some insight via the SDV Discord regarding "hardcoding" which utilizes the image labelled **Portraits.png** below and loads the correct Portrait from **Game\\Portraits**. I have a 4-page word doc of notes and things to fix in **Category:NPC\_images** first, then once this is corrected, I can correctly label NPC Gifts without having to go back to each **Category:NPC\_images** page to verify I'm grabbing the right file. Would be much easier to look at my Excel sheet and say "oh, x's Like is (NPC) Happy.png" rather than hunting down which one is correct. Spiderkace (talk) 05:32, 10 November 2022 (UTC)

Allow me to say "Wow".

Unfortunately, the EN wiki is the image repository for all languages, so a change made in English affects up to 11 other languages. Image renaming is a hard "no", unfortunately.

What I need is a verification of whether or not the correct portrait is displayed for the 5 gift preferences for each giftable villager on the EN wiki, and if not, change it. If so, carry the changes to the other 11 languages. (It's fine to skip pages that aren't created in other languages yet.)

If you can't/don't care to figure out which existing (perhaps oddly named) image is the "correct" one, then I understand completely, but that's the end of the project.

How about adding the alternate farm maps to all fish pages first? margotbean (talk) 20:22, 10 November 2022 (UTC)

## Portraits image

Since the portraits image (above) isn't being used anywhere else on the wiki, can I delete it, or would you still like it to refer to? Please advise, thank you, margotbean (talk) 21:18, 11 November 2022 (UTC)

Free to delete, I have it saved locally. Could be useful in a potential Modding:Portraits page but a true modder could say better if it's useful or not

ok, thank you. I also forgot to say "Thank you" for all the work you're doing in updating the other wikis with portraits. Thank you!!!! margotbean (talk) 21:41, 11 November 2022 (UTC)

Not a problem! I needed some stuff to do while out with COVID anyways... I'll get this one finished up and then start testing the fishing in the other Farm Maps. Spiderkace (talk) 21:56, 11 November 2022 (UTC)

Hey Margotbean, don't think I'd explicitly said it but the portraits are all updated for each language. I've completed as many as I can for Hungarian and Turkish for now as not all the pages are created yet. Spiderkace (talk) 03:40, 14 November 2022 (UTC)

Yes, I saw that, well done and thank you! The entire wiki community thanks you!! margotbean (talk) 11:37, 14 November 2022 (UTC)

p.s. Thanks for translating the gifting quotes as well! That was a nice surprise 😊 margotbean (talk) 11:45, 14 November 2022 (UTC)

Hey Margotbean, feel free to reach out to me here or via the email function and let me know if you'd like my assistance with anything. I'm currently just playing through the game and I'll be touching the wiki here and there, but I'm available if needed!

Well, I hope COVID hasn't been to harsh for you, and thanks for the offer!

I think you have a leftover project to add alternate farm maps to all the fish pages, though, don't you? (Not just fish used in Bundles)? 🤔

Otherwise, the next item on my "to do" list is kind of a drag: Check which villager quotes are used in year 1 vs. year 2 (especially at Festivals). I've added one quote to Shane's page for the Egg Festival where I discovered new dialogue in year 2, but I don't know if the new quotes (which were added in v1.5 btw) alternate years, or if there are different quotes for year 1 vs. the rest of the years. I also don't know if these new quotes are limited to festivals, or if there is new dialogue in general.

As I said, it's a tedious one, and probably something I won't ever get around to doing, in all honesty. The editors who added and updated all the quotes on villagers' pages in the past have all gone inactive, and I had nothing to do with any of the edits. As long as they weren't swear words, I just ok'd them.

The rest seems to be Admin stuff. but I will let you know if anything comes up in the near future! Be well!! margotbean (talk) 16:46, 19 November 2022 (UTC)

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=User\_talk:Spiderkace&amp;oldid=143619"

Category:

- User talk pages