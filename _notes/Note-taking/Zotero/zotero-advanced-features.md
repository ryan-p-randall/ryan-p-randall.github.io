---
title: "Zotero Advanced Features"
date: 2023-12-06
last_modified_at: 2023-12-07T21:04:02-6:00
note-taking: true
zotero: true
excerpt: "Nifty Zotero things you might not know about yet."
status: ":herb:"
toc: true
published: true
blogged: true
---

<span class="audience">Assumed audience</span> People at least passably familiar with [Zotero](https://www.zotero.org/), a free to use, cross-platform research tool.  
{: .notice }

## Original Publication Date  

For those of us who work in the humanities and social sciences, it's common for sources to have been published in multiple versions. But Zotero only has a single date field! **Great Scott!** How do we deal with the complexities of time?  

For instance, how would one indicate that Samuel Delany's _Nova_ was initially published in 1968, even though the edition we're referencing was published in 2002?  

Here's where Zotero's `Extra` field comes in handy! That field allows you to include information beyond Zotero's currently available fields. This additional info will be output as specified based on the citation style you select. (**Obvious Signposting Alert:** I will include some relevant intricate details that might feel like "gotchas" below.)  

### How to Add and Output Original Publication Dates  

Adding `original-date: 1968` in the Extra field will do precisely what we want. (Once upon a time this required curly brackets, but [curly brackets were no longer necessary](https://forums.zotero.org/discussion/comment/263156/#Comment_263156) after sometime in 2016.)  

If you want to check and make sure it outputs correctly, you can right-click on the item, select "Create Bibliography from Item," select your intended citation style, and then select a few other options. The quickest I've found it to copy it to the clipboard and paste it somewhere else to check.  

Here's the output formatted for an Modern Language Association (MLA) 9th edition bibliography:  

Delany, Samuel R. <i>Nova</i>. 1968. 1st Vintage Books ed, Vintage Books, 2002.  

Look at that! It's **1968!**  

(If that's a year you're also interested in, maybe give my old band's song "Le Nouveau Monde" a listen, especially if you'd like to hear my friend Omar putting his singing voice through its paces. It's [the second track, playable near the bottom](https://raincrossunderground.omeka.net/items/show/3) of this EP. The lyrics are available there, too. And if you hear multiple songs playing simultaneously, you might need to disable media autoplay in your browser; I don't think that can be turned off in the content management side of Omeka, unfortunately.)  

### Surprises or Gotchas  

Okay, so are there any gotchas or surprises? Here are the ones I've found thus far in my 30 minutes of testing:

First, **New lines** matter, although the order of lines does not! The `original-date:` string needs to be on a new line in the Extra field, but it doesn't need to be on the first, last, or any other line in that field. This means that you can include other information in that field, you just have to make sure that `original-date:` is on its own separate line. I also have been putting the DOI of each publication in the Extra field, where relevant.  

Second, **source formats** matter. At least as I'm testing this as of 2023-12-06, in MLA 9th edition, the `original-date:` field will be output for **books and web pages**, but will not be output for **articles**. It's certainly not usual for articles to be anthologized or reprinted—just think of the publication history of Donna Haraway's ["A Cyborg Manifesto"](https://en.wikipedia.org/wiki/A_Cyborg_Manifesto)—but that information doesn't seem to currently be included in the standard CSL file that Zotero uses to output a MLA 9th edition-style citation. If you really want to include initial date of publication for articles, you might try editing your own CSL file… or it might be worth filing an issue at the [Citation Style Language official repository](https://github.com/citation-style-language/styles).  

Okay! I'm off to add original dates to a **ton** of my Zotero entries! I've been keeping track of these using an even more manual process, which involves adding BibLaTex-structured information to my reading notes. So having learned this Extra field trick will make things far simpler, at least for me! Hopefully it'll be useful for you as well.  