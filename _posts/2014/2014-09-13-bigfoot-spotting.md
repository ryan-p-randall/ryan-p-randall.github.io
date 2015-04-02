---
layout: post
title: "Bigfoot Spotting and Other Jekyll Adventures"
modified:
categories: 2014
excerpt:
tags: [meta]
image:
  feature:
date: 2014-09-13T21:38:37-04:00
--- 

Here's a test of Bigfoot.js, a rather awesome addition to the web. [^bgft] (edit: It'll remain elusive, see footnote #2.)[^bgftfail]

Sooner or later I'll write about how I've made this site so far. I would still like to add two main things to it: the Bigfoot.js inline footnote functionality and an alternate stylesheet in the vein of Brett Terpstra's [SuperReadable](http://brettterpstra.com/). His hides under a gear in the top right corner of his site, and allows visitors to switch to a stylesheet that uses [OpenDyslexic](http://opendyslexic.org/), a free and open source font designed for dyslexic readers.   

The process of making this site with [Jekyll](http://jekyllrb.com/) has been a rewarding foray into using the command line interface, but it initially took quite a bit longer than I'd hoped. So I anticipate creating a brief series of "how-to" posts from my old process notes as I was putting this together. Jekyll's a great blogging alternative to WordPress that uses fewer resources (i.e. doesn't require a database) and can be hosted for free on GitHub pages, making it great for LibSchool students who want to create a site that will be a bit more of a learning opportunity.  

[^bgft]: You can find this arcane, hirsute magick [here](http://www.bigfootjs.com/) courtesy of Chris Sauvé, a Canadian otherwise [known as lemonmade](https://github.com/lemonmade).   

[^bgftfail]: After an afternoon of tweaking, tinkering, asking questions, and reading specifications sheets, it seems that Bigfoot.js won't work with Kramdown, the parser that Github pages uses to convert Markdown into html. It comes down to Bigfoot needing the footnote definitions list items to have a `class="footnote"` attribute, but there doesn't seem to be a way to make this happen with Kramdown. As awesome as Bigfoot.js appears, it will remain elusive around here until this aspect of Kramdown syntax changes or I decide to do a fundamental overhaul of how I make my site. I'm adding this edit so that this can be useful to anyone else hoping to make Bigfoot.js work with Jekyll and to anyone heartened by seeing others tinker and fail. 