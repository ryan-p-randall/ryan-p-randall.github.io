---
title: "Testing new RSS feed system"
last_modified_at:
categories: # [blips, now, notes, monthly-signal-boost, photonic-jukebox, ways, weekly-assemblage]
excerpt: "Will the new system display content correctly in feedreaders, as well as look nice on the web? Here's a way to check."
tags: []
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