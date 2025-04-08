From Stardew Valley Wiki

**Note:** After saving, you may have to bypass your browser's cache to see the changes.

- **Firefox / Safari:** Hold *Shift* while clicking *Reload*, or press either *Ctrl-F5* or *Ctrl-R* (*⌘-R* on a Mac)
- **Google Chrome:** Press *Ctrl-Shift-R* (*⌘-Shift-R* on a Mac)
- **Internet Explorer / Edge:** Hold *Ctrl* while clicking *Refresh*, or press *Ctrl-F5*
- **Opera:** Go to *Menu → Settings* (*Opera → Preferences* on a Mac) and then to *Privacy &amp; security → Clear browsing data → Cached images and files*.

```
/* Any JavaScript here will be loaded for all users on every page load. */

$(function() {
   if (location.hash) {
      var anchor = $(location.hash).get(0);
      if (anchor)
         anchor.scrollIntoView();
   }
});
```

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=MediaWiki:Common.js&amp;oldid=81504"