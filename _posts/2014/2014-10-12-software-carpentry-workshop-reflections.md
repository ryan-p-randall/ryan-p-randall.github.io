---
layout: post
title: "Software Carpentry Workshop Reflections"
modified:
categories: 2014
excerpt:
tags: [digital humanities]
image:
  feature:
date: 2014-10-12T22:50:07-04:00
---

{% include _toc.html %}

## Welcome to the Command Line

It wasn't quite *Tron*: I jumped into the world of computing for two days while taking a Software Carpentry workshop and it turned out highly illuminating *without being threatening*. This post aims to summarize what I learned & its relevance to librarians and/or digital humanities folks, encourage others to take/give similar workshops, and explain what I'd change about the workshop for librarians or digital humanities scholars.  

<!-- more -->  

### Software Carpentry   

Since 1998 [Software Carpentry](http://software-carpentry.org/), a volunteer organization, has been introducing basic computing skills to scientists. The workshops focus on Unix commands & programs, Python programming basics, Git for version control, and MySQL for database management. From a pedagogical standpoint, I particularly like that their teaching materials introduce different personae and scenarios to help participants grasp the real-world relevance of the technologies as they learn. From a "these tools should be universally accessible" standpoint, I'm grateful that Software Carpentry puts all their materials online for free. If you're interested in the specifics of their lessons, [check them out here](http://software-carpentry.org/lessons.html). As part of my campus's [ASIS&T Student Chapter](http://ella.slis.indiana.edu/g/asistsc/), I can easily imagine selecting portions of their materials as the basis for much shorter workshops, then pointing people to the full online materials to learn more on their own.    

### My Perspective   

I came into the workshop familiar with some basic Unix commands and use of GitHub from the graphic user interface. For instance, I generate my website from the command line using a program called [Jekyll](http://jekyllrb.com/) and then push it to GitHub's servers using their Mac app. So although I had a functional mental model for how these things work, the Software Carpentry lessons helped extend my knowledge into much more powerful tools. Much like when learning a foreign language, the immersive aspect of grappling with these systems for a sustained period of time seems to have helped things "stick." Since you probably know whether a programming language (Python) or a database (MySQL) would be useful or interesting for you, I'll only write about Git in depth.   

If you ever write anything for school or work, you could benefit from using [Git](http://git-scm.com/). It's version control software, meaning that it helps keep track of changes in files. Unlike the "track changes" functionality you're probably familiar with in Microsoft Word, Git accomodates collaboration at huge scales. For software or anything else that benefits from separating stable and development versions, Git uses a model of branching. Say you've made a simple script that works, and you want to share it but also want to keep adding new features. Git lets you simultaneously have a reliable output and others that are under constant revision and improvement. When you're satisfied that the new features haven't added anything undesirable into those versions, you can pull the new developments into the reliable version with ease.   

Moreover, Git isn't just for programs or scripts—it's equally superb for good 'ol paragraphs of text! Since I've previously been burned by losing files due to hard drives crashing and programs becoming obsolete, I've taken to writing in plain text using [Markdown](http://daringfireball.net/projects/markdown/). (If you want to see how it works, [here's a useful playpen](http://dillinger.io/).) I can use Git to track the development of a particular file that I'm working on, with brief annotations for every stage that I save (or "commit"). This is great news! I wouldn't necessarily want to put the working draft of an academic article on GitHub for just anyone to stumble across, but by using Git through the command line I can have that same version control power in the cozy confines of my own hard drive. (If you're not into the whole <strike>brevity</strike> Markdown thing, it's apparently possible to [use Git with Microsoft Word](http://blog.martinfenner.org/2014/08/25/using-microsoft-word-with-git/) as well, should you so desire. But seriously, just do yourself a favor and write in Markdown, especially if anything you do is destined for the web.)  

### Recommendations for Workshops Aimed at Librarians and Digital Humanities Folks  

Using an [EtherPad](http://etherpad.org/) allowed us to take live collaborative notes, as well as chatting in a side bar. This, along with using blue and orange sticky notes to indicate whether we're doing well or having trouble, made what could have been an isolating, each-to-their-own-screen experience much more collective. Our particular [EtherPad](https://etherpad.mozilla.org/swc-2014-10-06-indiana) persists after the end of the workshop, so we can all go back and brush up on the different commands and things. Sadly, far fewer people showed up to the workshop than signed up, which meant that there were a lot of spaces that could have been used by others. The incentive model that Indiana's Statewide IT conference apparently uses is that they charge nothing to attend but charge about $15 *if you don't show up*, which seems the best way of making these accessible to the greatest number of possible participants. I'd highly recommend that model for anyone giving one of these in the future. If you're interested in taking or leading a workshop, they've got a page for [more information](http://software-carpentry.org/workshops/index.html). The EtherPad, sticky notes, and incentive model would all be useful strategies for any workshop.   

For librarians and DH people, the MySQL portion of the Software Carpentry workshop could have been greatly reduced. It does certainly seem worth demonstrating how nicely MySQL interacts with Python scripts and with the iPython Notebook viewer. However—and this is a complement to its ease of use!—MySQL seems straightforward enough that anyone interested could learn from Software Carpentry's online documentation rather than walking through it in detail as a group. What felt far more useful to do in person was something that Jeremiah Lant, one of our presenters, improvised in our last 45 minutes after we collectively decided to skip the remainder of the MySQL stuff: we walked through writing a Unix shell script that combines the concept of for loops (covered in the Python section) to determine something about a data set, then write those findings to a text file. This exercise neatly tied together many of the new skills that we'd gained and applied them to a scenario that our Assessment Librarian, [Andrew Asher](http://www.andrewasher.net/), faces routinely.   

As a librarian, I can certainly see that these particular tech tools would work well for any countable data: circulation, gate counts, collection statistics, etc. They have less *immediate* relevance to digital humanities, since what's interesting about humanities texts rarely arrives in enumerated form. However, having spent two days familiarizing myself with how these tools operate makes it much easier for me to conceive of how to formulate questions about texts using these tools. Immersing myself in the command line has also made me generally more comfortable exploring a side of my computer I'd hitherto treated as a threatening realm. I'm not going to register for a lightcycle just yet, but the Software Carpentry workshop certainly made me even more eager to continue learning more programming tools.   

### TL;DR   

- Check [Software Carpentry's Future Workshops page](http://software-carpentry.org/workshops/index.html) to see if there's one happening near you. Take one if you can!  
- If you lead one for librarians and digital humanities people, downplay MySQL in favor of building scripts to handle bulk tasks.    
- Use [EtherPad](http://etherpad.org/) if you're leading a workshop and want people to have collaborative notes & chat in the same place. (It's like Google Docs only without needing accounts, permissions, etc.)   
- Consider having a "pay if you **don't** come" policy to create an incentive for all who register to show up.  

