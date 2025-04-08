From Stardew Valley Wiki

```
{
    "Format": "2.5.0",{{{1}}}}
```

## Description

This template outputs an example Content Patcher `content.json` structure with the latest Format version.

### Usage

Just call the template with the top-level Content Patcher fields you want to display (except `Format`). These should be indented once with four spaces.

For example, this template usage:

```
{{Content Patcher example|<nowiki>
    "Changes": [
        {
            "Action": "EditData",
            "Target": "Data/animationDescriptions",
            "Entries": {
                "pufferbob_sleep": "50/50/50"
            }
        }
    ]
</nowiki>}}
```

Will produce this code example:

```
{
    "Format": "2.5.0",
    "Changes": [
        {
            "Action": "EditData",
            "Target": "Data/animationDescriptions",
            "Entries": {
                "pufferbob_sleep": "50/50/50"
            }
        }
    ]
}
```

### Escape MediaWiki syntax

Note that the example above includes `<nowiki>`. That just prevents MediaWiki from mangling the code if it has wiki syntax like `{{` (which is common in Content Patcher examples).

Retrieved from "https://stardewvalleywiki.com/mediawiki/index.php?title=Template:Content\_Patcher\_example&amp;oldid=184360"

Category:

- Modding templates