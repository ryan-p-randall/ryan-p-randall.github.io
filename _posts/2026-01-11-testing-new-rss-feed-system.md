---
title: "Testing new RSS feed system"
last_modified_at: 2026-01-12T17:03:26-6:00
categories: # [blips, now, notes, monthly-signal-boost, photonic-jukebox, ways, weekly-assemblage]
excerpt: "Will the new system display content correctly in feedreaders, as well as look nice on the web? Here's a way to check."
tags:
- meta
- rss
- site refinements
# header:
#  image: /assets/images/weekly-assemblage.png
#  caption: 'Photo credit: [**Unsplash**](https://unsplash.com)'
published: 2026-01-11
toc: false
comments:
notes:
date: 2026-01-11T10:16:58-6:00
---

After seeing Cassidy William's [How to make your RSS feed pretty](https://cassidoo.co/post/prettify-rss/) yesterday, I went down a [Rabbit Hole of Unusual Size (R.H.O.U.S.)](https://tvtropes.org/pmwiki/pmwiki.php/Main/RodentsOfUnusualSize).  

It involved stitching together patterns gleaned from posts like Darek Kay's [Style your RSS feed](https://darekkay.com/blog/rss-styling/) and Rees' [Using jekyll-feed + XSLT with GitHub Pages](https://reeswrites.com/posts/jekyll-feed-github-pages/).  

Andrew Stiefel's [How to Style an Atom Feed with XSLT](https://andrewstiefel.com/style-atom-xsl/) is what I've currently adopted/adapted. Doing so means switching from using the popular [Jekyll-Feed plugin](https://github.com/jekyll/jekyll-feed) to Andrew's Liquid-based feed generators.  

(No matter what I tried yesterday, my attempts to style the Jekyll-Feed plugin's output either left the feed entirely unstyled or it was generated with styles, but the styles introduced validation errors that prevented the feed from actually displaying with content in the browser. There's a good chance that these problems are ultimately due to user error and only "wrong" in my development Jekyll environment… but having spent hours trying to sort it out, switching seems like the path forward.)  

So that brings us to this post! I'm checking whether the new approach:
- displays nicely in the browser when truly published to my public site
- includes post content when viewed in a feed reader
- preserves the previous feed links (i.e. doesn't introduce breaking changes to where the feeds live or what they're called)

Put on your goggles and PPE, everyone! The test is about to begin!   

## Update: 2026-01-12

Yesterday's attempt worked nicely—but I noticed an important difference between the preview visible in the browser and in NetNewsWire! Each post's title was visible in the browser page, but it wasn't there in NetNewsWire.  

I've just updated the Liquid-based logic on my feed pages with the `<entry>` code used by Jekyll-feed. It starts at [line 72 and ends at line 126](https://github.com/jekyll/jekyll-feed/blob/master/lib/jekyll-feed/feed.xml#L72-L126) in their current code.  

For the [Semi-schematic feed](https://www.ryanpatrickrandall.com/feed/semi-schematic.xml), which contains just a single category of this blog's posts, I added another [Liquid if statement](https://shopify.dev/docs/api/liquid/tags/if) so it would output only posts assigned to that category. That's at [line 21 of this site's `feed-semi-schematic.xml` file](https://github.com/ryan-p-randall/ryan-p-randall.github.io/blob/develop/feed-semi-schematic.xml#L21). Just sharing in case anyone is digging through this site's source code and trying to figure out how to adapt this for your own site.