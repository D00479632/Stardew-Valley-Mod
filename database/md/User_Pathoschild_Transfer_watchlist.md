From Stardew Valley Wiki

&lt; User:Pathoschild

This page helps you transfer your watchlist from the old wiki (`stardewcommunitywiki.com`) to this one.

To do that:

1. Open a tab on the old wiki and make sure you're logged in.
2. Open a JavaScript console (see instructions).
3. Run this script in the console:
   
   ```
   await (async function() {
      const limit = 500; // max allowed by MediaWiki
      const pages = [];
   
      let continueFrom = "";
      while (true)
      {
         console.log(`fetching pages ${pages.length} to ${pages.length + limit} (${continueFrom}…)`);
   
         // build URL
         let url = `https://stardewcommunitywiki.com/mediawiki/api.php?action=query&list=watchlistraw&wrnamespace=*&wrlimit=${limit}&format=json`;
         if (continueFrom)
            url += `&wrcontinue=${continueFrom}`;
   
         // fetch page
         const data = await $.getJSON(url);
         try {
            for (let page of data.watchlistraw)
               pages.push(page.title);
   
            continueFrom = data.continue?.wrcontinue;
            if (!continueFrom)
               break;
         }
         catch (error)
         {
            console.error("Failed while fetching watchlist page.", { error, data, continueFrom });
            break;
         }
      }
   
      console.log();
      console.log("---------------------------------------------")
      console.log(`Done! Found ${pages.length} pages on your watchlist.`);
      console.log(`See the instructions at https://stardewvalleywiki.com/User:Pathoschild/Transfer_watchlist for the next steps.`);
      console.log();
      console.log(pages.join("\n"));
   })();
   ```
4. Copy the text from the console:
   
   browser instructions Chrome,  
   Edge Scroll to the bottom of the console window, and click *Copy* at the end of the text. Firefox Right-click the text, and choose *copy object*.
5. Go to Special:EditWatchlist/raw on this wiki.
6. Paste into the box and click *Update watchlist*.

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=User:Pathoschild/Transfer\_watchlist&amp;oldid=116736"

Category:

- Modding