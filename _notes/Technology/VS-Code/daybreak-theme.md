---
title: "Daybreak Theme"
date: 2022-04-18  
# last_modified_at: 2020-09-20  
excerpt: "My fave color theme, plus some of my customizations."
status: ":seedling:"  
published: true
technology: true
technology-vs-code: true
---

I'm a big fan of dark themes. I've been using variants of [Horizon](https://horizontheme.netlify.app/) for quite a while now in VS Code (as you can read about in [[vs code note]]), since I like the overall warmth of the theme's color palette.  

Unfortunately, the person who initially designed Horizon doesn't seem to be [actively maintaining it](https://github.com/jolaleye/horizon-theme-vscode), and that version no longer findable in the VS Code extensions respository. Thankfully, the [Daybreak](https://daybreaktheme.com/) variant fills this void nicely!  

The one thing I'm not a fan of with Daybreak is that the activity bar icons are extremely low-contrast, to the point that you almost need to remember the order of the icons in order to know where to put your cursor, if you don't feel like just sweeping across them all every time you engage with that panel. Since VS Code lets you [add customizations](https://code.visualstudio.com/api/references/theme-color#activity-bar), this isn't difficult to override. 

```json
    "workbench.colorCustomizations": {
        "activityBar.inactiveForeground": "#6C6F9395"
        }
```

In the snippet above, I'm applying the dark purple/gray (which <span style="color: #6C6F93;">looks like this</span>) from the original Horizon theme's [Dark UI palette](https://horizontheme.netlify.app/) just to the inactive icons. The original value is #6C6F93 — the last two digits in my code reduce the opacity from 100% to 95%. This is enough to help "situate" the color in the bar, at least to my eyes. It's a good balance of increasing the contrast while still visually prioritizing the active icons.  

Even if you don't particularly love this theme, hopefully this note helps you trick out VS Code however suits you!  