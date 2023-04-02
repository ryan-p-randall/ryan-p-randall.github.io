---
title: "VS Code Spellcheck Squiggles"
date: 2023-04-01T19:02:44-6:00
last_modified_at: 
excerpt: "How to change the color of all those squiggly lines under all those mispelled words."  
status: ":herb:"
published: true
blogged: true
technology: true
technology-vs-code: true
---

There are a number of spellchecking extensions available for VS Code. I [realized recently](https://hcommons.social/@ryanrandall/110098114786311964) that I'd disabled the spellcheck I installed because of how distracting I found VS Code's default squiggly lines.  

So I set about making them less intrusive, but still easily perceptible.  

## Step 1: Check the Notification Class  

Step 1 is to check the settings of whatever spell check extension you use to learn the notification class it applies.  

I use Bartosz Antosik's [Spell Right](https://marketplace.visualstudio.com/items?itemName=ban.spellright), which works offline and allows for multiple languages. You can find the right setting by clicking on the "settings" gear icon, then searching for "Notification Class."  

{% include figure image_path="/assets/images/squiggle-default.png" alt="Default with distracting color" caption="Default spellcheck line color, which I find distracting." %}

I knew I was on the right track when I set the notification class to "warning" rather than "error" and saw the color of the squiggly lines change. But I didn't love that color.  

I liked the default "hint" option better, but suspected that I wouldn't notice the indicators reliably.  

{% include figure image_path="/assets/images/squiggle-hint.png" alt="Hint otion with grey ellipses under first characters of an error instead of full underline" caption="Hint option, which I don't find readily perceptible." %}

## Step 2: Indicate Your Preferred Color  

Step 2 is to open your `settings.json` file, then add your preferred color's hex code… and do so in the right place.  

{% include figure image_path="/assets/images/squiggle-preferred.png" alt="Squiggly underline in my preferred color" caption="Here's my preference, noticeable but not distracting in multiples." %}

You have to add `"editorWarning.foreground": "#(your color hex here w/o parentheses)",` in the "workbench.colorCustomizations" section. Not in the "editor.tokenColorCustomizations" section! (Which is the mistake that took me a while to find.)  

## Step 3: Determine Your Preferred Color  

But what if you don't love your theme's default colors?  

Step 3 is to learn that [ColorHexa](https://www.colorhexa.com/) exists. You can use that site's [color blend](https://www.colorhexa.com/color-blend) tool to combine your theme's colors into one that is perceptible, jibes with your aesthetics, but isn't jarring. Then add that new, less jarring color to your `"editorWarning.foreground"` setting as mentioned above.  