---
title: "Light Mode in Progress"
date: 2023-06-11T21:59:37-6:00
last_modified_at: 2023-10-12T21:44:14-6:00  
excerpt: "Today's work on putting together a light mode."  
categories: 
tags: 
toc: false
published: true
---

Today—the day after I finished up a "16 weeks condensed into 4" Spanish class—I happened to read some folks on Mastodon talking about [light themes](https://social.pixie.town/@joepie91/110526984317454201) on websites.  

I've been wanting to add one to my site for years, my brain apparently wanted a project I could reasonably <del>accomplish</del> make noticeable progress toward within a day, **and** I vaguely remembered having seen other [Minimal Mistakes theme users discussing how to implement this](https://github.com/mmistakes/minimal-mistakes/discussions/2033#discussioncomment-257421).  

Thus far today I've managed to have my Jekyll-based site correctly generate two different themes: the dark one I've been using for years and another light one that's basically the default theme with a couple of colors switched out. That's a success!  

Currently this site defaults to my regular dark theme, but will serve a light theme if it sense that you have "prefers light mode" set in your browser or operating system.  

Today's work also lays the foundation for adding a toggle. That's successfully building toward a future success!  

There are going to be some surprises along the way to a fully-featured light mode, such as noticing **and also fixing** the fact that the Bigfoot pop-up colors aren't really legible at the moment. I'll need to figure out how many of these things I can avoid hard-coding in the future. But it's nice to finally work on it, even if doing so was somewhat of a surprise today.   

## Update  

As of 2023-10-12, I've mostly fixed the things I had noticed with the theme. (They were inaccessible text and background colors related to footnotes and notices.)  

My next ambitious stretch goal will be to make a few [user-selectable themes](https://fossheim.io/writing/posts/accessible-theme-picker-html-css-js/), like Sarah L. Fossheim has done on their site. I'm also considering a move from [Bigfoot](https://web.archive.org/web/20221127194150/http://www.bigfootjs.com/) to [Littlefoot](https://littlefoot.js.org/) for the fancy pop-up footnotes.  