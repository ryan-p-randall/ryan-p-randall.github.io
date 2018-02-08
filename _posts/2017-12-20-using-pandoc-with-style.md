---
layout: post
title: Using Pandoc With Style
modified:
categories:
excerpt: Writing is hard. Pandoc can make citation and document formatting alright.  
tags: [tech tools, tools for thinking, infrastructure]
image:
  feature:  
  thumb:  
published: false
comments:
date: 2017-12-20T11:34:53-07:00
---

I'm figuring all this out by doing, so I don't mean to present this as authoritative. If I've gotten anything wrong or left out any steps, please [get in touch on Twitter](http://twitter.com/foureyedsoul) or leave a comment right here.  
{: .notice}  

### Contents  
{:.no_toc}  

- Auto generated table of contents  
{:toc}  

### Writing is Hard  

Often I get a partially-formed idea, rarely a complete one. More likely I'll have an inchoate nagging in my brain after reading something, and it'll persist until I either jot it down on paper or type it up in markdown.[^markdown_simpkin] If I'm reading an article or book, I might make a reaction in the margin (often digital marginalia via [Skim](http://skim-app.sourceforge.net) or Preview). If I'm lucky, I'll be trying to write for a class assignment—at least then, I know the audience and some shared context.  

In any case, this little spark of an idea has to be nurtured, protected from the bluster of my attention going every which way, then given sustained order and additional energy. If I'm doing well, that fleeting idea will get enough fuel and structure to become a campfire other people will find appealing enough to hang out by for a while. Ideally, I'll recognize where to give due credit for the stories I'll extend and songs I'll augment while I've got my audience's attention.  

With all the practical, mental, and ethical concerns of writing well, it's hard __not__ to be a fan of tools that reduce the barriers to building that idea from a spark to something sustained enough to share. For me, markdown and related technologies are some of those tools.[^yowza]  

### Me and Pandoc Down by the Schoolyard  

The tutorial by Dennis Tenen and Grant Wythoff at Programming Historian called ["Sustainable Authorship in Plain Text using Pandoc and Markdown"](https://programminghistorian.org/lessons/sustainable-authorship-in-plain-text-using-pandoc-and-markdown) offers a solution to most of this problem. Once you've finished following it, you'll have skipped past formatting the citation details, but you'll be left with formatting hanging indents, changing headings, etc., etc. Depending on what you've written, that can make for a lot of mopping up.  

This post therefore picks up where they end: with making sure that Pandoc not only creates a .docx or .pdf out of your markdown file, but that it styles those document according to your own preferences. If you're used to [html and css](https://developer.mozilla.org/en-US/docs/Learn/CSS/Introduction_to_CSS/How_CSS_works), you're familiar with [style sheets](https://en.wikipedia.org/wiki/Style_sheet_\(web_development\)). The analog to this for Pandoc is a "reference doc."  

The two main things I've learned beyond the Tenen and Whythoff tutorial are:  

1. How to generate & use a reference doc  
2. How to set the title of your reference section  

These things are what I'll cover below.  

#### How to Use a Reference Doc  

Most of the Pandoc tutorials I've seen say that the reference doc will go into `/.pandoc`, which is a hidden directory. None of them clearly explain how to see what's _in_ this directory. Perhaps they all assume that if you're using a command line tool, you're already absolutely proficient with Unix-y things. If you're like me and still learning the command line in part _because_ of tools like Pandoc, this could be a huge deal breaker.  

Thankfully, it's not.  

A reference doc for Pandoc can be placed anywhere, not just in the data files under `/.pandoc`, even though that's their apparent default. I'll show a few examples of how to use reference docs below, but first we should cover how to create one and style it according to what you want.  

##### Creating a Reference Doc  



##### Call a Reference Doc  

Let's assume your user name is `yoshimi-p-we` and you're writing something you'll eventually title  "Grow Sound Tree".[^grow-sound-tree] You've got your work in a folder on the Desktop called `this-semester`, and you do your actual writing in a file called `grow-sound-tree.txt`.[^why-txt]  

To use Pandoc to turn your text file into a Word document, you'll need to open your terminal window and navigate to that folder using `$ cd`. I currently keep all my writing projects in a single folder and have set it as a user profile in my terminal app of choice, [iTerm2](https://iterm2.com). As Tenen and Wythoff suggest, it's a good idea to use `$ ls` to list the files in that folder and check that you and your terminal path agree on where you're at and the files you'll be working with.  

In order to 

```
$ pandoc -smart --reference-doc=/Users/yoshimi-p-we/Desktop/this-semester/reference-mla.docx -o "Grow-Sound-Tree.docx" "grow-sound-tree.txt  
```

[^why-txt]: Most people seem to use `.md` or `.markdown` as the file type for their markdown files, but I've tended to just use `.txt`. I think that's because the text editors I initially had to use on iOS for markdown didn't support different file extensions, but I can't remember at this point. I don't care to reduce the interoperability of the files by renaming them all at this point. Plus, to my brain the file _type_ is just plain text, while the _language_ is markdown. Pandoc and all the other markdown tools I use allow you to set which files types should be treated as markdown, so I'll leave that to your own discretion.  

#### Adding in pandoc-citeproc  

Pandoc excels at switching between formats. If you're an academic writer, its main attraction might well be what it brings for switching between citation styles. That's certainly why I like it so much. So, let's see how to add the pandoc-citeproc filter to our reference-doc command.  

Let's say that your user name is `debbieGooge` and you're about to submit your article, `cite-it-all-over-me`.[^cite-it-all-over-me] Your files are all on your Mac's desktop and you want the resulting Word document to not just use MLA formatting style, but also have hanging indents and all the other MLA style conventions.  



```
$ pandoc -smart --reference-doc=/Users/debbieGooge/Desktop/reference-mla.docx -o "GoogeSubmission.docx" --filter pandoc-citeproc "cite-it-all-over-me.txt  
```

### Writing is Alright  

After doing all this—setting up your writing tools, structuring your writing environment, putting your bibliography together, learning new command line tools and flags, and creating a reference doc to use as a style sheet—writing will still be hard. However, there's going to be far less mopping up involved, so you can focus on the most rewarding parts of the challenge.  

Writing remains hard. But with pandoc helping create citations and style your documents, writing's alright.  

<iframe width="560" height="315" src="https://www.youtube.com/embed/X0KLEkZWL5k" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>

[^markdown_simpkin]: If you're not familiar with Markdown, this blog post might not be very helpful. Sarah Simpkin has written a very accessible [intro to Markdown](https://programminghistorian.org/lessons/getting-started-with-markdown) at Programming Historian that makes a good starting point if you're unfamiliar but interested.  

[^cite-it-all-over-me]: [Drive It All Over Me](https://youtu.be/3lhPQfvVx5Q) might well be my favorite My Bloody Valentine song. It's perfect noise pop, with Debbie Googe's bass grind and Belinda Butcher's vocals taking the helm, leaving Kevin Shields' guitar and Colm Ó Cíosóig's drums to support the song while adding enough flourishes to remind you that it's MBV. It's a shame this was a non-album track relegated to [an ep](https://www.discogs.com/My-Bloody-Valentine-You-Made-Me-Realise/master/19444) that's always been difficult to find in the States.  

[^yowza]: That's a lot of preamble for a how-to about using [pandoc](http://pandoc.org) and [pandoc-citeproc](http://pandoc.org/MANUAL.html#citations). However, I've noticed that a lot of how-to posts are long on _what to do_, fair on _why to do_, and almost entirely skip over _how it feels to do_. (Kieran Healy's <http://plain-text.co> provides an great deviation from this pattern.) I use markdown, pandoc, and pandoc-citeproc to make the writing process _feel_ easier, and part of what makes the process _feel_ that way is that I don't feel "locked in" to any of my editing, citational, or typographic along the way. Maybe more importantly, I _feel_ like it's easier because I'm turning the plain, programmatic, single-correct-answer tasks of citation formatting over to processes that excel at that kind of task. Programs do, but I don't! I can be detail-oriented at times. While I'm trying to make big connections, nuanced arguments, or trace lineages of thought while also phrasing them in simultaneously compelling and unambiguous ways is not one of those detail-oriented times. I'd come to detest the last tasks of finishing up a paper: finding the citation details, making sure hanging indents were done correctly, etc.  

[^grow-sound-tree]: [Grow Sound Tree](https://youtu.be/gbeFyCa19Jg) is a great tune by OOIOO off their [gold & green](https://youtu.be/gbeFyCa19Jg) album. And yes, this is indeed the same Yoshimi from the Boredoms who performed with the Flaming Lips on, and became the namesake for, their _Yoshimi Battles the Pink Robots_ album.  


That's a lot of effort and ethics to put into writing, but who one cites matters. The frame of an idea, which authors are acknowledged, the lineages and genealogies acknowledged or unrecognized—these concerns help shape disciplines and fields. Communication gets complicated when you're working amid a few different disciplines or traditions.  

Tutorial by 

[pandoc-citeproc manual](https://github.com/jgm/pandoc-citeproc/blob/master/man/pandoc-citeproc.1.md)  



<!--

- [ ] make a new GitHub repo with my MLA style reference doc and Atom bibliography snippets  
  - [ ] come up with a decent repo name; `pandoc-bibtex-and-related`?  
  - [ ] come up with a decent repo description; "Place for my pandoc reference docs, bibtex snippets, and some related files"?  
  - [ ] MLA style reference doc  
  - [ ] run a diff of my Atom snippets and VukanJ''s; if there's no difference, link to his; if there is a difference, include mine with a link to his and explain the difference  
  - [ ] perhaps include a couple of my bibliography files, partially as examples, partially to put them somewhere safe  
  - [ ] 

-->