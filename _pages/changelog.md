---
permalink: /changelog/
title: "Changelog"
date: 2026-01-31
last_modified_at: 2026-01-31
# header: 
#  image: /assets/images/pocket-notebooks.jpg
#  image_description: "ryan's pocket notebooks"
toc: true
featured_pages: false
---

Everything changes, as has been observed by insightful folks from the Buddha to Heraclitus to David Bowie.  

Here are some particularly noteworthy changes.[^not-semver]  

[^not-semver]: Put differently, this is not a full, proper ["semantic versioning"-style changelog](https://semver.org/), as much as I appreciate that format for software releases.  

## 2026

- 2026-08-16: Customized the [Posts by Category](/categories/) & [Posts by Tag](/tags/) layouts so that the list within each category or tag is reverse chronological (i.e. displays the newest post on top).
  - If you're using the same Minimal Mistakes theme or just are curious about Jekyll & Liquid, you can see how I did this by going to the [GitHub repository](https://github.com/ryan-p-randall/ryan-p-randall.github.io) for this site.
  - Once there, look at the `categories-custom.html` or `tags-custom.html` layouts, each of which I altered to refer to a new `posts-taxonomy-reverse-chronological.html` include. Line 30 of this new include has a single simple change from the theme's default. It now reads<br>
    {% raw %}`{% for post in taxonomy.last reversed %}`{% endraw %}<br>
    Adding the word **`reversed`** to the end of the `for` loop does the trick!
- 2026-08-15: Realized that there were two H1-level headings on [my `/now` page](/now/), which I promptly fixed by adding a new [now page layout](https://github.com/ryan-p-randall/ryan-p-randall.github.io/blob/develop/_layouts/now.html#L33-L35). This is exactly like the default page layout, except it now displays the page title as an H2 heading (instead of the default H1) in lines 33 and 35.
- 2026-06-10: Added reading percentages to [my `/reading` page](/reading/) and reading notes.  
- 2026-02-05: Added a [`/watching` page](/watching/), refined relevant pages in the [notes section](/notes/Watching/), and added enough relevant items to test it all out.  
- 2026-02-01: Added conditional MLA citation to pages, not just posts. Refined the `/ai` page a bit.  
- 2026-01-31:  
    - Added this changelog page, an [`/ai` page](/ai/), and a [`slashes` page](/slashes/).
    - Changed the [`/now` page](/now/) code.
    - Changed the sitewide footer section (adding 3 links & 2 buttons, having made sure the styling could accommodate many more).
    - Changed the Liquid code that generates the RSS/Atom feeds to limit each to only include the most recent 20 posts.  
- 2026-01-26: Added [ID Portfolio page](/id-portfolio/) and four project retrospectives. Add Jekyll-Tagories plug-in.  
- 2026-01-11: Styled the RSS/Atom feeds.  
- 2026-01-07: Add conditional citations (in MLA style) to pages & posts, minimally adapted from [code shared on GitHub](https://github.com/scholarslab/scholarslab.github.io/blob/main/_layouts/post.html#L35-L56) by the awesome folks at the [UVA Library's Scholars' Lab](https://scholarslab.lib.virginia.edu/).  
- 2026-01-03: Add [Shaarli](https://github.com/shaarli/Shaarli)-based [Bookmarks](https://bookmarks.ryanpatrickrandall.com/) section.  

## 2025

- 2025-12-29: Added a new [Semi-schematic category](/semi-schematic/), to use like a professional newsletter.  
- 2025-12-13: Changed the [`/notes` page](/notes/) to only have the Evergreen notes section open when the page initially loads.  
- 2025-09-13: Updated Webmention includes so totals are displayed.  
- 2025-09-03: Add Webmentions.  

## 2024

- 2024-05-10: Improved how Reading pages display.  
- 2024-01-16: Add backlinks to notes & posts.  

## 2023

- 2023-12-22: Add Liquid-based [Bookmarks](/bookmarks/) section.  
- 2023-06-11: Add an automatic light mode.  
- 2023-01-10: Added [`/reading` page](/reading/).  

## 2022

- 2022-04-17: Added a `workflow.yml` GitHub file. This lets me use extra plug-ins beyond the standard ones allowed by GitHub Pages.  
- 2022-04-11: Added Liquid- & Jekyll-based [Digital Garden](/notes/).  

## 2021

- 2021-09-21: Updated the color theme for [CWI 101](talks/cwi101.html/) and other CWI-related talks to use CWI's new branding color palette.  

## 2020

- 2020-07-19: Added [`/now` page](/now/), refined many other pages.  
- 2020-01-06: Started using remote version of Minimal Mistakes theme.  