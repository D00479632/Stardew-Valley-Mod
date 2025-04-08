From Stardew Valley Wiki

This is Samu698's talk page, where you can send messages and comments to Samu698.

- Sign and date your posts by typing four tildes (~~~~).
- Put new text below old text.

<!--THE END-->

- Be polite.
- Assume good faith.
- Don't delete discussions.

## Crop Groth Template

Hello Samu698, I have moved your WIP template to User:Samu698/Sandbox/Template Crop Growth Calendars. The reason is that template changes need to be discussed before making them. (See Help:Editing.) The reason template changes need to be discussed before being made is that template changes have to be carried out in 11 other languages. So, before we implement big changes, we need to think of the impact across all 12 wikis. Thanks very much for your understanding! margotbean (talk) 16:50, 26 June 2022 (UTC)

Sorry for not discussing the template, but i was going to do it later, when it's done.

The plan is to make the template calculate all the calendars, normal and with fertilizer, by giving it only the days required for each stage. This way the Crop Growth Calendars page could be easily replaced by this template.

Some text in the template should be translated, but for the rest I don't think it would affect the other wikis much.

Hope this is the right place to discuss this, if not tell me where I should do it. Thanks for reading, bye Samu698 (talk) 14:59, 27 June 2022 (UTC)

I admire your enthusiasm, but I must warn you, the page has already been created and sorted alphabetically by native language in 10 other languages. It's also transcluded onto several (if not all) crop's page in those languages. So changing it would really be a *major* change. I think there would have to be a really good reason to make such a big change. margotbean (talk) 18:05, 27 June 2022 (UTC)

I have revised on the template and added language translation, just by simply adding `lang = en` into the template. This should make it easier to include into the pages for the other languages, so you don't need a different template for each language. I think using a template is definitely a smart approach, as you don't need to recreate the box every time. You can find it at User:SorkoPiko/Template Crop Growth Calendar. SorkoPiko (talk) 22:21, 9 July 2022 (UTC)

Nice work! But probably it's not very useful, because usually on this wiki 12 copies of a template are created where each one is translated for that wiki. It's very unlikely that this template will be used as you can see be the message above by margotbean. Samu698 (talk) 06:35, 10 July 2022 (UTC)

## Slot Machine

Hello Samu, the table you recently added to the Slot Machine page needs a code reference (for the chance column). If you could provide one, that would be wonderful. I can help format it, if you like. Thank you, margotbean (talk) 14:30, 2 July 2022 (UTC)

Ok I did it Samu698 (talk) 14:56, 2 July 2022 (UTC)

Perfect, thank you! margotbean (talk) 15:11, 2 July 2022 (UTC)

## Pelican Town Map

It looks good, and that was very fast (wow!)

I think all of the CSS should be in the template style page, no inline CSS whatsoever. After that, please let me take a look, then we can move the template to the other languages, translate the links, and *then* we can replace the image with the template (in all languages). OK? Thank you! margotbean (talk) 15:17, 4 July 2022 (UTC)

Can I leave the inline CSS for the span elements with the top, left, width, height or i should create a class for each of them

I'd like all the CSS to be in the stylesheet, if possible (if the wiki allows it). Use an ID instead of a class if the size and position are unique. margotbean (talk) 15:25, 4 July 2022 (UTC)

I removed all the inline CSS and moved it into the stylesheet, also I created a tool at https://samu698.github.io/translate.html that allows to translate a link to all languages using the wiki API.

So for this template by putting this

```
[[Harvey's Clinic|<span id="link1"></span>]]
[[Pierre's General Store|<span id="link2"></span>]]
[[Community Center|<span id="link3"></span>]]
[[Museum|<span id="link4"></span>]]
[[Blacksmith|<span id="link5"></span>]]
[[JojaMart|<span id="link6"></span>]]
[[The Stardrop Saloon|<span id="link7"></span>]]
[[1 River Road|<span id="link8"></span>]]
[[Trailer|<span id="link9"></span>]]
[[Mayor's Manor|<span id="link10"></span>]]
[[1 Willow Lane|<span id="link11"></span>]]
[[2 Willow Lane|<span id="link12"></span>]]
[[The Sewers|<span id="link13"></span>]]
[[Graveyard|<span id="link14"></span>]]
[[Ice Cream Stand|<span id="link15"></span>]]
[[Dog Pen|<span id="link16"></span>]]
```

into the website it will spit out the translated links for all languages Samu698 (talk) 20:47, 4 July 2022 (UTC)

That's wonderful! I have one last concern, I'd like the IDs to have meaningful names (in English), instead of numbers. That will help me in the future if any updates are needed. margotbean (talk) 15:16, 5 July 2022 (UTC)

Ok, i'll do it, maybe this night. Also did you try the tool, I want to make it useful for all the transators, now it is a rough sketch and it just works for this template, if you have suggestions please tell me. Samu698 (talk) 15:35, 5 July 2022 (UTC)

To be honest, I didn't check the translations for accuracy, I just marveled at your accomplishment. I would probably use a text editor and search for the term(s) in English instead, to be sure I was using the latest version of the translations. In the search results window, I can see all 12 translations for a word, and can copy/paste from there. I can also see if the game uses 2 different translations for the same word (which happens a bit too often). By searching the entire contents of the "Content" game folder, I can see everything at once. margotbean (talk) 15:59, 5 July 2022 (UTC)

Made the change you requested. If there are no problems, can I start creating the templates for each language and edit their respective Pelican Town page, or you want to do it yourself. Samu698 (talk) 18:52, 5 July 2022 (UTC)

No, I don't want to do it myself, please proceed with creating the templates in the other languages &amp; updating the Pelican Town pages (if they exist). The main difference between the English and other versions will be that you add `{{Englishdoc}}` to the template instead of `{{Addlanglinks}}` and `{{FULLPAGENAME/doc}}`. You won't need to create a separate "doc" for the template in the other languages. Good luck, and have fun! margotbean (talk) 15:03, 6 July 2022 (UTC)

Thanks for the tips! Tomorrow i'll do it. And if I make any mistakes I can count on you, as you did with the chair pages in the italian wiki (also i'll be more careful this time) :) Samu698 (talk) 15:16, 6 July 2022 (UTC)

Ha ha, no worries, that's my job. 👍 margotbean (talk) 15:32, 6 July 2022 (UTC)

Template deployed! On the pelican town pages except the one on the hungarian wiki because it doesn't have that page. Also I noticed some pages don't have all the langlinks, but i was to lazy to fix them ;) Samu698 (talk) 20:07, 7 July 2022 (UTC)

It all looks great, well done! margotbean (talk) 13:39, 8 July 2022 (UTC)

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=User\_talk:Samu698&amp;oldid=139846"

Category:

- User talk pages