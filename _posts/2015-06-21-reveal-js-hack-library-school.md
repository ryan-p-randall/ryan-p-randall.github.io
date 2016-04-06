---
layout: post
title: "Presentation Alternatives: Reveal.js"
modified: 2016-04-05T23:59:05-06:00
categories:
excerpt: Are you looking for a good alternative to PowerPoint or Keynotes? Here's a Hack Library School post about an excellent free &amp; open source one!  
tags: [presentations, tech tools, pedagogy, critical theory, a11y, hack library school]
image:
  feature:
  thumb: 
published: true  
date: 2015-06-21T02:38:52-04:00
---

Here's a [post I wrote](http://hacklibraryschool.com/2015/06/18/presentation-alternatives-reveal/) for Hack Library School talking about my experience with the [Reveal.js JavaScript presentation framework](http://lab.hakim.se/reveal-js/#/). Not only does it hew to my goal of choosing open-source tools over proprietary formats whenever feasible, its functionality and inherent ability to make presentations shareable on the web make it vastly preferable to tools like PowerPoint or Keynote.   

As librarians, academics, archivists, and/or instructors, we should consider the effects of the formats we choose. How durable are they? How accessible are they? Whose interests do they serve? Whether you frame this as ["<strike>format </strike> information creation as a process"](http://www.ala.org/acrl/standards/ilframework#process), something closer to ["format as culture,"](http://computationalculture.net/article/reflections-on-the-mp3-format) or even ["we jam econo,"](https://books.google.com/books?id=o7CZRPZ27TQC&lpg=PT13&pg=PT14#v=onepage&q=econo&f=false) please be deliberate.   

The post at Hack Library School sits within a series introducing and explaining alternatives to PowerPoint, so it's not quite a how-to sort of post. If you'd like pointers, please do feel free to get in touch via Twitter or when I add them—which I expect will <strike>be soon </strike>_not happen until GitHub Pages adds an appropriate plugin_—the [Jekyll Static Comments](https://github.com/ldesgrange/jekyll-static-comments) system that I'm slowly working out.[^jsc] 

[^jsc]: Edit on 2016-04-05: At the moment, it's unlikely I'll be adding a [Jekyll Static Comments](https://blog.desgrange.net/2012/06/11/jekyll-installation.html) plugin. I prefer this type of system over using Disqus since this is based on emails, and therefore people wouldn't have to sign up for yet another web service. However, that means I'd have to work out per-post emails and then dial in a spam filter. Also, it's not one of the [few plug-ins GitHub Pages supports](https://help.github.com/articles/adding-jekyll-plugins-to-a-github-pages-site/). That means that I have to build my site locally, then sync it to GitHub's servers. I'd never be able to update my site from my phone, which I have done on occasion and want to continue being able to do. So until (a) GitHub allows a version of email-based commenting to work on GitHub Pages, (b) I learn enough and/or choose to move my site to GitLibs or Heroku, or (c) I actually get multiple people reaching out on Twitter or elsewhere saying that they'd want to leave comments, I'm deep-freezing this task in carbonite.    

## edits on 2016-04-04 & 2016-04-05:  

I found a great tutorial today: [Reveal.js for Beginners](http://htmlcheats.com/reveal-js/reveal-js-tutorial-reveal-js-for-beginners/). If you're looking at implementing this on your own site, I'd highly recommend starting there.  

Also, I'd like to elaborate a little on the multiple, intersecting types of accessibility I think this type of mobile, audience-member-controllable slide presentations promotes:  

- mobile device  
   - economic  
- people with disabilities  
   - low-vision / blind (i.e. users of screen reader technology)   
   - people with attention disabilities or cognitive disabilities (ADHD, dyslexia, executive dysfunction resulting from a wide variety of causes, learning disabilities, etc.)  
- pedagogical accessibility  

Many of these overlap, of course. For instance, it's quite common for economically underprivileged people to own or have access to a mobile device but not a laptop. We see this continually at the community college where I work! We also work with—and indeed, are ourselves—students, instructors, librarians, and staff with what I'm calling attention or cognitive disabilities. (I'm lumping those together not because they have the same root causes, but because they all seem to be best addressed by providing a way for the person to control how much time they spend engaging with something.)   

These attention disabilities bring us to pedagogical accessibility. How many times have you wanted to write down a link or reference that was the last thing on a slide, but the speaker advances it just a few moments too quickly? How many times do you wish you could go back to see a term or definition introduced earlier in the talk, but couldn't?  

Giving your audience the ability to engage with your slides as you talk effectively aides your audience in becoming actual interlocutors, able to engage with your ideas on their terms & at their speeds. Why choose to ensnare them within your own timing? This slide framework promotes the attitude of generosity and loving kindness that I associate with bell hooks' writings.[^bh1]   

[^bh1]: It's late as I write this and I've got a few of her works muddled together. I've recently read most of [_Teaching to Transgress_](http://www.worldcat.org/oclc/30668295), a [conversation between her and Thich Nhat Hanh](http://www.lionsroar.com/bell-hooks-and-thich-nhat-hanh-on-building-a-community-of-love/), and an [interview with her at _Tricycle_](http://tricycle.org/magazine/agent-change-an-interview-with-bell-hooks/), so I'm not sure what to cite for this notion at the moment. If I haven't revised this by firming up a reference, please [reach out to me on Twitter](https://twitter.com/foureyedsoul) and I'll try to figure it out or point you in a good direction.  

All that said, one still needs to add `alt` descriptions to images in Reveal.js talks! Since I initially made [my current information literacy slides](http://ryanpatrickrandall.com/talks/cwi.html#/) for my position interview, which happened as I was still learning how to make slides with this javascript framework, I neglected to do this. I have just gone back and fixed that now. I'll have to find someone who uses screen readers to see how accessible they feel these slides are now. 

As for Reveal.js itself, the [issues for this framework](https://github.com/hakimel/reveal.js/search?q=screen+reader&type=Issues&utf8=✓) show that at least one of the people contributing to the project is [Marcy Sutton](https://github.com/marcysutton), who has apparently helped with [Girl Develop It's accessibility slides](http://girldevelopit.github.io/girldevelopit-rdu-access/#/). Here's her page of [web accessibility resources](http://marcysutton.com/web-accessibility-resources/). I'll be going through these soon to continue learning about how to make web resources more accessible for people with visual disabilities.   

Or as I said in today's [#critlib chat](https://storify.com/AlicePrael/intro-to-critlib-part-2), #critlib is a process. 

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Many comm coll students have mobile devices w/o laptops @ home. Need to make slides more screenreader accessible now. <a href="https://twitter.com/hashtag/critlib?src=hash">#critlib</a> is a process!</p>&mdash; Ryan P. Randall (@foureyedsoul) <a href="https://twitter.com/foureyedsoul/status/717055097742622722">April 4, 2016</a></blockquote> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>  

If there's one "should" statement I feel comfortable making, it's that we should continually try to do better, collectively and individually. Part of doing better involves, to the degree individually possible, being willing to point out our own mistakes and how we're improving what we've done.  

Or in the immortal words of Bill S. Preston, Esq., "Be Excellent to Each Other."  

<img src="https://media.giphy.com/media/POekkUcKs16gg/giphy.gif" width="100%" alt="Bill and Ted saying Be Excellent to Each Other and Party On, Dudes">