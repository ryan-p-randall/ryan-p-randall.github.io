---
layout: post
title: "Bigfoot Spotting and Other Jekyll Adventures"
modified: 2015-05-31
categories: 2014
excerpt: A post where I describe trying—and thus far, failing—to use Bigfoot.js to make footnotes more engaging in a Jekyll/GitHub Pages blog. I'll revisit this soon to give it another try.
tags: [meta]
image:
  feature:
date: 2014-09-13T21:38:37-04:00
---

Here's a test of [Bigfoot.js](http://www.bigfootjs.com/), a rather awesome addition to the web. [^bgft] (edit: It'll remain elusive, see footnote #2.)[^bgftfail] (edit &#8470; 2: I've gotten it to work, as of 2015-05-31! It *wasn't* an issue with Jekyll or GitHub Pages, but rather with my understanding of how Jekyll & GitHub plugins work. Once I realized that, it just took some more tinkering to get the appropriate JavaScript calls and SCSS things working.)  

Sooner or later I'll write about how I've made this site so far. I would still like to add two main things to it:

- [x] <del>the Bigfoot.js inline footnote functionality</del> @done(2015-05-31)!
- [ ] an alternate stylesheet in the vein of Brett Terpstra's [SuperReadable](http://brettterpstra.com/).  

Terpstra's alternate stylesheet hides under a gear in the top right corner of his site, and allows visitors to switch to a stylesheet that uses [OpenDyslexic](http://opendyslexic.org/), a free and open source font designed for dyslexic readers. (They might not speak up, but you've got students, users, or patrons who'd appreciate being told about OpenDyslexic in your syllabi or other handouts.)

The process of making this site with [Jekyll](http://jekyllrb.com/) has been a rewarding foray into using the command line interface, but it initially took quite a bit longer than I'd hoped. So I anticipate creating a brief series of "how-to" posts from my old process notes as I was putting this together. Jekyll's a great blogging alternative to WordPress that uses fewer resources (i.e. doesn't require a database) and can be hosted for free on GitHub pages, making it great for LibSchool students who want to create a site that will be a bit more of a learning opportunity.

For now, here's a list of links I'd recommend for learning about Jekyll:  

1. Trevor Jones has written probably [the best guide I've seen so far to setting up a Jekyll/GitHub Pages blog](http://www.trevordjones.com/jekyll)—I wish I'd have found this when I was putting my own site together.  
2. [Michael Rose's "Going Static"](https://mademistakes.com/articles/going-static/) helps explain why to use Jekyll.  
3. [Mike Greiling's "Jekyll From Scratch"](http://pixelcog.com/blog/2013/jekyll-from-scratch-introduction/) helped me get through starting my own.
4. [Barry Clark's "Build a Blog with Jekyll and GitHub Pages"](http://www.smashingmagazine.com/2014/08/01/build-blog-jekyll-github-pages/) also helps distinguish Jekyll from alternatives like WordPress.

If you have questions about making a site of your own using Jekyll—or any of this, really—don't be shy about contacting me on Twitter.

[^bgft]: You can find this arcane, hirsute magick [here](http://www.bigfootjs.com/) courtesy of Chris Sauvé, a Canadian otherwise [known as lemonmade](https://github.com/lemonmade).

[^bgftfail]: After an afternoon of tweaking, tinkering, asking questions, and reading specifications sheets, it seems that Bigfoot.js won't work with Kramdown, the parser that Github pages uses to convert Markdown into html. It comes down to Bigfoot needing the footnote definitions list items to have a `class="footnote"` attribute, but there doesn't seem to be a way to make this happen with Kramdown. As awesome as Bigfoot.js appears, it will remain elusive around here until this aspect of Kramdown syntax changes or I decide to do a fundamental overhaul of how I make my site. I'm adding this edit so that this can be useful to anyone else hoping to make Bigfoot.js work with Jekyll and to anyone heartened by seeing others tinker and fail.
