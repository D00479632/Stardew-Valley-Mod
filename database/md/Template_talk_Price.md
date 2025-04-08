From Stardew Valley Wiki

This talk page is for discussing Template:Price.

- Sign and date your posts by typing four tildes (~~~~).
- Put new text below old text.

<!--THE END-->

- Be polite.
- Assume good faith.
- Don't delete discussions.

## Calico Egg

I'll start the discussion, should we add Calico Egg to this template? On one end it is a currency during the Desert Festival and a lot of items have to be paid with it. On the other end, it is an item in the players inventory (which other price currencies are not), deviating from other entities used in this template.YuvixAdun (talk) 07:07, 24 March 2024 (UTC)

It shouldn't matter whether or not a Calico Egg is used both as a currency and an item within the game. A template's job is to make an editor's life easier. If people keep typing

```
[[File:Calico Egg.png|24px|link=]] xyz
```

every time the cost in Calico Eggs is mentioned in an article, one might as well be typing

```
{{Price|xyz|Egg}}
```

to make everyone's life easier. I thought it was a no-brainer change. And since it's an option added to the template, it doesn't affect how the other languages' templates behave.--Spaceeinstein (talk) 14:45, 24 March 2024 (UTC)

It seems someone needs to read Help:Editing more thoroughly. margotbean (talk) 16:23, 24 March 2024 (UTC)

Spaceeinstein, I'd agree that seeing the need, and even the approach, to the suggested change is pretty much a no-brainer. But the implementation of the change is not a no-brainer. For example: "Hey! I've got a great idea for a new rocket engine!". "Super. Let's build it! Got any spare parts?". There are a couple of steps in between. Giles (talk) 22:13, 24 March 2024 (UTC)

So moving forward we need someone to translate 'Calico Egg' for us in order to make sure this new template would work YuvixAdun (talk) 18:42, 24 March 2024 (UTC)

Both "Egg" and "Calico Desert" are surely translated already for other use, so picking up the suitable language for Calico Egg ought to be pretty straightforward. Giles (talk) 22:07, 24 March 2024 (UTC)

I'm new to helping out with the wiki so I'm trying to understand how the translations work, but in this template its not applicable right? Since we only show an icon + number right? Or is it linking to the egg somehow? From the Help:Editing I understand that the text modifier (e.g. *walnut* or *egg* in this case) has to be just in English? YuvixAdun (talk) 18:25, 25 March 2024 (UTC)

Since no one seems to understand what's written in Help:Editing, I'll try to explain. Template changes need to be carried out in all 12 languages. All 12 languages' templates need to have the same structure. The only difference should be in terms that vary by language, *i.e.,* translations.

What is needed, once changes are discussed and agreed upon, is someone to say "I'll change all 12 languages!" That person can then make the appropriate changes, **in all 12 languages**.

Translators begin by copy/pasting the page in English. Then they begin to translate. If a template isn't up-to-date in another language, the translation stops, and the translator has to investigate the problem. If they aren't familiar with mediawiki syntax, which is usually the case, they either ask me a question about it or give up and leave a mess. If they ask a question, it falls on me to do the investigation, find the source of the problem, and fix it. If they leave a mess, once again, it falls on me to clean it up.

Therefore, template changes need to be discussed before being implemented.

Is anyone willing to change the template in all 12 languages?

--margotbean (talk) 16:10, 26 March 2024 (UTC)

I'd love to take a week to learn how to do this since this is the *second* time i have updated ~20 pages to include the now deleted new format for these eggs, but the few languages I checked (Japanese Korean, and Spanish) don't look like the desert festival page even exists on them (Or at least its not linked to the seasons page and it doesn't have a section in the festivals page), and I sure don't know those languages well enough to make them. Some major work is gonna have to be done before the template can be made, sadly. -Mellowheart (talk) 16:30, 26 March 2024 (UTC)

On the template page, click the inter-language links at the bottom left. View the source code in another language; you can see the template looks almost exactly the same in all languages. The only difference is at the bottom, in the `<noinclude></noinclude>` tags.

This lack of knowledge is precisely why template changes need to be discussed first. There is no need to create pages in other languages; simply set the templates to be equal for the translators when they come along. I don't know how to explain this any more completely. margotbean (talk) 16:38, 26 March 2024 (UTC)

Aaah, okay, so we don't necessarily need to translate, its just that we need to make sure changes to a template are propagated to the Template pages on the language subdomains, e.g. https://de.stardewvalleywiki.com/Vorlage:Price. I'm willing to update all the 12 templates to align them, or at least give it a try. YuvixAdun (talk) 17:12, 26 March 2024 (UTC)

I extracted the SVD language files via StardewXnbHack and got the following strings from each language file. I'm not sure on how to change the template in all 12 languages, but if somebody does, these are the strings.

SDV-file Wiki Language String EN English Calico Egg DE Deutsch Calico Ei ES Español Huevo calicó FR Français Œuf de Calico IT Italiano Uovo di Calico JP 日本語 カリコエッグ KR 한국어 칼리코 달걀 HU Magyar Calico tojás pt-BR Português Ovo de Calico ru-RU Русский Яйцо Калико tr-TR Türkçe Patisko Yumurtası CN 中文 卡利科三花蛋

They are based on the "CalicoEgg\_Name" variables in the files. --Maiken (talk) 16:46, 26 March 2024 (UTC)

Well, this seems to be very useful! Now, I don't know how to update it in all 12 languages, but I'll leave that to someone else. Brandon Echols (talk) 16:58, 26 March 2024 (UTC)

Finally, a volunteer! Thank you!!

We don't actually need the translations, however. If you look at tokens, qi coins, and all the forms of currency other than "gold", you see that there is no word for it, just the image. So, that's all we need, literally just insert:

`|egg=[[File:Calico Egg.png|24px|link=]] {{formatnum:{{{1|}}}}}`

before the gold entry. **Or** you can use "calico" instead of egg, or whatever you like. Just keep it simple.

I will lift the protection from the template, and please let me know if you have other questions or encounter problems. Your username and password are the same for all languages, but you have to sign into each language separately. margotbean (talk) 17:45, 26 March 2024 (UTC)

I'm working on it – I keep running into 503. I'll try to finish up in hour. Please don't revert before that. Maiken (talk) 18:32, 26 March 2024 (UTC)

All languages have been updated. The ones I ran into a 503 for, I double-checked. I went with `|calico=[[File:Calico Egg.png|24px|link=]] {{formatnum:{{{1|}}}}}` since the amazing ConcernedApe keeps adding updates, and he could add other eggs to a later update. Maiken (talk) 18:54, 26 March 2024 (UTC)

Awesome work! :) YuvixAdun (talk) 19:14, 26 March 2024 (UTC)

I agree, well done, and thank you! margotbean (talk) 19:34, 26 March 2024 (UTC)

Yes, I also agree! It's very nice having this updated template for ease of use. :)

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=Template\_talk:Price&amp;oldid=161022"

Category:

- Template talk pages