---
title: "Daybreak Theme"
date: 2022-04-18  
last_modified_at: 2022-11-19  
excerpt: "My fave color theme, plus some of my customizations."
status: ":herb:"  
published: true
blogged: true
technology: true
technology-vs-code: true
gallery:
  - url: /assets/images/db-ab-o.png
    image_path: /assets/images/db-ab-o.png
    alt: "original with low-contrast icons"
    title: "original Daybreak theme with low-contrast icons"
  - url: /assets/images/db-ab.png
    image_path: /assets/images/db-ab.png
    alt: "my current preference, which is easier to perceive"
    title: "my current preference, with higher contrast"
  - url: /assets/images/db-ab-95.png
    image_path: /assets/images/db-ab-95.png
    alt: "colors with transparency"
    title: "an in-between alternative"
---

I'm a big fan of dark themes. I've been using variants of [Horizon](https://horizontheme.netlify.app/) for quite a while now in VS Code (as you can read about in [[vs code note]]), since I like the overall warmth of the theme's color palette.  

Unfortunately, the person who initially designed Horizon doesn't seem to be [actively maintaining it](https://github.com/jolaleye/horizon-theme-vscode). Their original version is no longer findable in the VS Code extensions respository. Thankfully, the [Daybreak](https://daybreaktheme.com/) variant fills this void nicely!  

## Activity Bar Contrast  

The one thing I'm not a fan of about Daybreak is that the activity bar icons are extremely low-contrast. Especially if you lower the brightness of your monitor, you almost need to remember the order of the icons in order to know where to put your cursor.  

{% include gallery caption="Here are three versions for the sidebar colors. My current preference is the middle one, with the highest contrast." %}

Here are the original colors:  

{% include figure image_path="/assets/images/db-ab-o.png" alt="original with low-contrast icons" class="third" %}  

VS Code lets you [add customizations](https://code.visualstudio.com/api/references/theme-color#activity-bar), so this isn't difficult to override.  

Here are the colors I'm using as of 2022-04-21:  

{% include figure image_path="/assets/images/db-ab.png" alt="my current preference, which is easier to perceive" class="third" %}

This is what I've added to my `settings.json` file to achieve this:  

```json
    "workbench.colorCustomizations": {
        "activityBar.inactiveForeground": "#6C6F93"
        }
```

The snippet above applies the dark purple/gray (which <span style="color: #6C6F93;">looks like this</span>) from the original Horizon theme's [Dark UI palette](https://horizontheme.netlify.app/) just to the inactive icons. This makes the colors much easier to see on a dimmed monitor.  

Here's a version that lands somewhere in between, which you might prefer if your monitor is often at full brightness.  

{% include figure image_path="/assets/images/db-ab-95.png" alt="colors with transparency" class="third" %}

This is the code to achieve these colors:  

```json
    "workbench.colorCustomizations": {
        "activityBar.inactiveForeground": "#6C6F9395"
        }
```

The original value for the purple/grey is `#6C6F93` — and in the above snippet, the last two digits in the code reduce the opacity from 100% to 58.5%. This is more than enough to help "situate" the color in the bar, at least to my eyes. It's a good balance of increasing the contrast while still visually prioritizing the active icons.  

But wait—why does `95` equal `58.5%`? I'd forgotten that these [values are in hex notation](https://css-tricks.com/8-digit-hex-codes/)—and therefore, anything in the 90% range would need to start with `F`.  

Even if you don't particularly love this theme, hopefully this note helps you trick out VS Code however suits you!  