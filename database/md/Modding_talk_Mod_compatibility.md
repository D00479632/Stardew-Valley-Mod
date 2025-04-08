From Stardew Valley Wiki

This talk page is for discussing Modding:Mod compatibility.

- Sign and date your posts by typing four tildes (~~~~).
- Put new text below old text.

<!--THE END-->

- Be polite.
- Assume good faith.
- Don't delete discussions.

## Interwiki transcluding

I want to translate this page to Chinese wiki, but it's updated frequently. As far as I'm concerned, transclude part of this page can be a potential way. However, `{{#lst}}` doesn't support interwiki references. And then I found that `$wgEnableScaryTranscluding` feature of Mediawiki could solve this problem possibly (*see also:Reasonably efficient interwiki transclusion*), while stardew valley wiki hasn't enabled the feature. Is there other way to solve this problem? Thanks. Horizon98 (talk) 11:49, 20 March 2021 (UTC)

You could try asking the wiki admins on Project:Admin noticeboard about enabling that option. —Pathoschild (talk) 03:14, 25 August 2021 (UTC)

Thanks for your reply. I have written an email via "email this user" function of the wiki to a sever admin to ask for help on April 13. but I didn't receive any reply :( --Horizon98 (Discussion) 05:19, 25 August 2021 (UTC)

I suggest asking on Project:Admin noticeboard instead. Not all of the admins are active or handle the wiki software, which might be why you didn't get a reply. —Pathoschild (talk) 17:51, 25 August 2021 (UTC)

I have posted the content to the Admin noticeboard. Thanks for your advice! --Horizon98 (Discussion) 02:21, 26 August 2021 (UTC)

## Template when updating mods for new game version

I've been doing a few edits on this page and I tried to copy what others have done but noticed some people use different phrases or words on some mod sections and was wondering if there is a template on what should be used when a mod is:

- not updated for 1.6 (or latest version) but still works
- broken on 1.6 (or latest version)
- " " but there's a workaround on nexus

so far I'm using:

```
 |broke in = Stardew Valley 1.6
  |status   = workaround
  |summary  = Use {{nexus mod|(nexus ID goes here)|(mod name goes here)}} instead.
```

- " " but there's a workaround on stardew forum
- " " but there's a workaround on github forum

so far I'm using:

```
 |broke in = Stardew Valley 1.6
  |unofficial version = (version number goes here
  |unofficial url     = {{github|(github url after .com/ goes here)}}
```

- " " but there's a workaround outside those 3 sources above
- not present on this page
- " " but a newer version is
- " " and a newer version is not present
- present but the github line is mentionned but is empty
- present but there is comment like

I was also wondering what to do when adding a new mod. Does it have to be added in a specific place or can I just put it between 2 mods (I usually pick the closest "}} {{" I can find and make sure it follows the structure as to not break anything

Twister5798 (talk) 01:42, 15 April 2024 (UTC)

Hi! The statuses are generally standardized by convention (i.e. by keeping them consistent with the existing entries in the list). The options I would use for the above are:

scenario status Not updated for 1.6, but still works. It's still considered compatible, no special status needed. Broke in 1.6, with unofficial update available. We have special fields for unofficial updates, which lets them trigger update alerts:

```
  |broke in           = Stardew Valley 1.6
  |unofficial version = 1.5.67-unofficial.1-thimadera
  |unofficial url     = https://forums.stardewvalley.net/threads/unofficial-mod-updates.2096/post-129629
```

Broke in 1.6, with alternative mod available. If the workaround is a C# mod (and not just a repost), we should add it to the list and then reference it:

```
  |broke in = Stardew Valley 1.6
  |status   = workaround
  |summary  = use [[#Workbench Helper|Workbench Helper]] instead.
```

If it shouldn't be in the list (e.g. it's not a C# mod, or it reposts the mod with the same mod ID), we can link to the mod page instead:

```
  |broke in = Stardew Valley 1.6
  |status   = workaround
  |summary  = use {{nexus mod|23271|Actually Lucky Rabbit's Foot (Rebooted)}} instead.
```

We can do that with mods anywhere (e.g. GitHub, forums, etc), and we can customize the link text if needed:

```
  |broke in = Stardew Valley 1.6
  |status   = workaround
  |summary  = use [https://community.playstarbound.com/threads/156000/page-57#post-3358211 unofficial conversion to Content Patcher] instead.
```

The compatibility list is sorted alphabetically, so new entries should be added in the sorted position. It's not a big deal if they're not though, I'll just sort them next time I update the list. —Pathoschild (talk) 15:57, 30 May 2024 (UTC)

I see, follow-up question. What if a modding tools, say a core mod, breaks? Do I mark only the mod that is a requirements or all the mods that are affected? For exemple: let's pretend *twistercore* is a modding tool and not present on the mod compatibility page, and there's *twister npc mod* that and *twister furniture mod*, both are present on the mod page but due to a game update they all are broken. What would be the logical thing to do? add the core mod to the page and add a broken status on all of them? --Twister5798 (talk) 00:34, 8 November 2024 (UTC)

## Page obsolete

The mod compatibility page was reaching the max complexity the wiki could handle. It was just under the max post-expand include size, most edits to the page were timing out, and editing it was enough to slow down the entire wiki server. Unfortunately, keeping the table on the wiki was no longer sustainable.

So the wiki page has now been superseded by the mod compatibility repo. This also...

- migrates the data to JSON, which makes it much easier to automate updates or use the data in various tools;
- combines all the data in one place (e.g. data overrides alongside their mod data);
- adds a validated JSON schema to keep the data consistent and valid;
- adds field documentation and auto-complete directly in the text editor;
- and adds an open-source license for newer contributions to the data.

Feel free to submit edits to the repo if needed! Changes to the repo will automatically update the public mod compatibility list, just like edits to the wiki page previously did. —Pathoschild (talk) 07:09, 18 November 2024 (UTC)

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=Modding\_talk:Mod\_compatibility&amp;oldid=181070"

Category:

- Modding talk pages