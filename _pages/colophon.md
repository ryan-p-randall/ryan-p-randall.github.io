---
permalink: /colophon/
title: "Colophon"
last_modified_at: 2023-11-28
header: 
  image: /assets/images/pocket-notebooks.jpg
  image_description: "ryan's pocket notebooks with cute stickers on their covers"
toc: true
---

Colophon  
: *historical* A statement at the end of a book, typically with a printer’s emblem, giving information about its authorship and printing. [OED](http://www.oxforddictionaries.com/us/definition/american_english/colophon)  

When you find yourself wondering, "how does one make something like this?," it's a good time to look for a colophon. If you make something cool, consider letting others know how.  

## This Very Site  

### Jekyll and the Minimal Mistakes Theme  

This page is built with [Jekyll](http://jekyllrb.com), currently hosted on [GitHub Pages](https://pages.github.com/), and [looks like this under the hood](https://github.com/ryan-p-randall/ryan-p-randall.github.io). It uses Michael Rose's [Minimal Mistakes theme](https://mademistakes.com/work/minimal-mistakes-jekyll-theme/), with a few of my own modifications.[^mmjt]  

[^mmjt]: Michael Rose has a page about his various [free, open source Jekyll themes](https://mademistakes.com/work/jekyll-themes/) in case you'd like to see others.  

Jekyll and GitHub Pages make for a great alternative to [WordPress](https://wordpress.org/) if you're looking for more control, want to learn more about what is going on behind the magic, or just plain don't want to pay for hosting while you're a student or emerging scholar/professional. If those things resonate, I suggest you check out [Building a static website with Jekyll and GitHub Pages](https://programminghistorian.org/en/lessons/building-static-sites-with-jekyll-github-pages) and [Running a Collaborative Research Website and Blog with Jekyll and GitHub](https://programminghistorian.org/en/lessons/collaborative-blog-with-jekyll-github), which are a great pair of introductions to how you might use it.[^jkp]

[^jkp]: I'll eventually make a separate post about all this, but until I do, here's a bunch of other useful links for Jekyll things. [Michael Rose's "Going Static"](https://mademistakes.com/articles/going-static/), [Mike Greiling's "Jekyll From Scratch"](http://pixelcog.com/blog/2013/jekyll-from-scratch-introduction/), & [Barry Clark's "Build a Blog with Jekyll and GitHub Pages"](http://www.smashingmagazine.com/2014/08/01/build-blog-jekyll-github-pages/) all do the job of introducing Jekyll admirably. [Carl Boettinger's "Learning Jekyll"](http://www.carlboettiger.info/2012/12/30/learning-jekyll.html) and [W. Caleb McDaniel's "Open Notebook History"](http://wcm1.web.rice.edu/open-notebook-history.html) each show how Jekyll- or Git-based sites work well for scholarly notebooks. I believe I initially taught myself from [Trevor Jones's series of posts on setting up a Jekyll/GitHub Pages blog](https://web.archive.org/web/20161211063913/https://www.trevordjones.com/jekyll) and [Mike Greiling's post "Jekyll from Scratch"](http://pixelcog.com/blog/2013/jekyll-from-scratch-introduction/), but at this point, I can't really remember.

### Fonts, Plugins, and Other Theme Customizations  

To the Minimal Mistakes theme, I've added [Bigfoot.js](http://www.bigfootjs.com/) for the fancy pop-up footnotes and [Reveal.js](http://lab.hakim.se/reveal-js/#/) for a splendid presentation alternative to PowerPoint or Keynote. 

As of late November, 2023, the <span style="font-family: Cartridge;">heading font is [Cartridge](https://simplebits.shop/collections/fonts/products/cartridge)</span> by [SimpleBits](https://simplebits.shop/) and the <span style="font-family: Atkinson-Hyperlegible;">body text font is [Atkinson Hyperlegible](https://brailleinstitute.org/freefont)</span> by the [Braille Institute](https://brailleinstitute.org/).  

I use [FontAwesome](http://fontawesome.io) for most of the icons, and James Walsh's [Academicons](http://jpswalsh.github.io/academicons/) to supplement Font Awesome with the Open Access lock, Academia-dot-edu, Orcid, and Zotero icons.  

I've also added (and lightly customized) Maxime Vaillancourt's [Bidirectional links generator](https://github.com/maximevaillancourt/digital-garden-jekyll-template/blob/main/_plugins/bidirectional_links_generator.rb) to make bidirectional links work in my [Notes/Digital Garden]({% link _notes/index.html %}). (The customizations allow the `[[wikilink]]` pattern to work from posts as well as notes and pages.)  

The favicon (the little ellipsis in a speech bubble) is ["Blog" by Scott Lewis](https://thenounproject.com/term/blog/4618/), available with a CC BY-3.0 license from the Noun Project. I <strike>chopped and screwed</strike> cropped and shrank it into the favicon format.  

## Link Conventions

Whenever possible, I link to [WorldCat](https://www.worldcat.org/) records for books. Why not work to make library access a default practice?  

## Writing Formats  

I'm a big fan of using [Markdown](https://www.markdownguide.org/) wherever possible. It's the primary source code for this site, for instance. I constantly use it with [Obsidian]({% link _notes/Note-taking/Obsidian/index.html %}) and VS Code for all sorts of notetaking, as I explain a bit further below. I also use it with [Pandoc](https://pandoc.org/) for academic writing.  

If you're curious about using Markdown with Pandoc, I'd recommend [this Programming Historian guide](https://programminghistorian.org/en/lessons/sustainable-authorship-in-plain-text-using-pandoc-and-markdown).  

Amanda Visconti's [guide to Markdown and Jekyll](https://programminghistorian.org/en/lessons/building-static-sites-with-jekyll-github-pages) at the Programming Historian provides an excellent starting point as well.  

<!-- I've been using Fletcher Penney's [MultiMarkdown][mmd] so long, it's committed to muscle memory. In other words, it's part of my way of interfacing with the world, just like other languages and syntaxes. If you plan to use any variant of [Markdown](http://daringfireball.net/projects/markdown/), I recommend this one. 

[mmd]: http://fletcherpenney.net/multimarkdown/  
-->  

## Journaling and Attention Management  

For keeping my mental lines of flight somewhat directed, I use text files that blend blend Ryder Carroll's "Rapid Logging" [Bullet Journal](http://www.bulletjournal.com/) system with aspects of Francesco Cirillo's [Pomodoro Technique](https://web.archive.org/web/20090306080717/http://www.pomodorotechnique.com/resources/cirillo/ThePomodoroTechnique_v1-3.pdf).  

I used to create monthly files for this when I did this in the Atom text editor. Now I make daily notes in Obsidian. I'll be detailing how in this [series of notes]({% link _notes/Note-taking/Obsidian/index.html %}). <!-- Now I make weekly notes using VS Code, Dendron, and the BuJo extensions mentioned below. -->  

I explain the monthly version of this system further in my GitHub repo for [my monthly planning files](https://github.com/ryan-p-randall/monthly-planning-files), which you're very welcome to download and adapt for your own brain. I'll eventually update this guide to match what I do with Dendron.  

It's not a fully-featured project management system with active reminders, of course. For that I've used [OmniFocus](https://www.omnigroup.com/omnifocus) in the past, but currently do this mostly through a combination of text notes, calendar reminders, and regular reviews of my notes.  

## Notekeeping & Text Editor Programs  

[Obsidian](https://obsidian.md/) has largely replaced [Dendron]({% link _notes/Note-taking/Dendron/index.html %}) as my notes app, due almost exclusively to the amazing [Tasks plugin](https://publish.obsidian.md/tasks/Introduction).  

[VS Code](https://code.visualstudio.com/) has been my text and code editor of choice since about 2020, when I switched over from [Atom](https://atom.io). VS Code doesn't cost any money, and you can customize it with themes and extensions galore, in addition to customizing your settings.  

<!-- 
[Dendron](https://www.dendron.so/), a VS Code extension for taking structured notes, was the reason I switched to VS Code. It stores your notes wherever you want, understands Markdown formatting, and is both free of cost and open source. Furthermore, it's built for scale, with features like hierarchical note structure, templates, and renaming or restructuring batches of notes at a time.  

[BuJo](https://bujo.mihaiconstantin.com/), another VS Code extension, offers a convenient way of using the [Bullet Journal](http://www.bulletjournal.com/) conventions for tasks. You can customize these as well.  
-->

[Daybreak](https://daybreaktheme.com/) has become the theme I like using wherever I can. It's dark and warm, and it provides syntax-based color changes for relevant parts of Markdown, HTML, CSS, and the few other languages I dabble in. (More specifically, I use either the Daybreak Italic or Daybreak Bold variants most of the time.) Daybreak is a variant of [Horizon](https://horizontheme.netlify.app/), which unfortunately doesn't have an official theme extension for VS Code anymore as of mid-2022.  

<!-- 
[Atom](https://atom.io/) excels at code editing and general note-taking. It's free, plus there are many extensions and themes. Since I rely a lot on Github-Flavored Markdown for both website making and bullet-journal style notes, I've swapped out the stock Markdown package for David van Gemeren's [language-markdown](https://atom.io/packages/language-markdown) and [minimal-syntax-dark](https://atom.io/themes/minimal-syntax-dark). If you're not that into the whole Markdown thing and just want a code editor that can make the pretty, Jan T. Sott has crafted a spate of lovely themes. I enjoy his [Paraíso Black for Atom](https://atom.io/packages/paraiso-black) so much that I might try to make a version of Minimal Syntax Dark with some of those colors.  

Once you [add a few plug-in packages](https://github.com/ryan-p-randall/monthly-planning-files#recommended-packages-for-atom), Atom provides a variety of features that make it the writing equivalent of the maximal-minimalist, delight-is-in-the-details visual aesthetic that [The Designers Republic™](http://thedesignersrepublic.com/) often use for [Warp Records](http://warp.net/). For those unfamiliar, that means it's *ace*. -->  