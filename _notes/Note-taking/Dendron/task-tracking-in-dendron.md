---
title: "Task Tracking in Dendron"
date: 2022-10-26
last_modified_at: 2022-11-01
note-taking: true
dendron: true
excerpt: "Ways I keep track of tasks and todos in Dendron."
status: ":seedling:"
toc: true
published: true
blogged: true
---

My notes in Dendron are an unruly, monstrous hybrid of a bullet journal, a log, a set of resources, and other information. And I like it like that! They're a continuation of the [monthly planning files](https://github.com/ryan-p-randall/monthly-planning-files) I used before Dendron came along.  

So if I use Dendron as a combination attention and task management tool, how does the task management work? I'm glad you asked!  

## Tasks, Todos, Task Notes  

I use a mix of inline checkboxes and separate [Dendron task notes](https://wiki.dendron.so/notes/n46dp3fj5cwetdyo777q8at/), pretty much as [Dendron suggests](https://wiki.dendron.so/notes/SEASewZSteDK7ry1AshNG/#plain-tasks). I also really like Mihai Constantin's [BuJo extension](https://bujo.mihaiconstantin.com/) for VSCode.  

I'll make a dedicated task note for anything I'd mention to someone else. This might be "write rough draft of conference presentation" or "do Saturday chores." Each of these is a bundle of smaller tasks. Each also might be one mile marker (or other chunk of progress) toward a larger project.  

Inline notes are basically anything that I feel like writing down as a step to something. These can be sprinkled throughout any note, and in particular will be on dedicated task notes.  

It's dangerous to sprinkle inline tasks too freely among different notes, since that makes them increasingly difficult to find. That's part of why dedicated task notes are important… but even more important are regular reviews. (Doing regular reviews is a difficult practice to do consistently—but it's profoundly rewarding, so I do my best.)  

## Inline Todo-Tracking  

For inline todos, I mostly use [Markdown checkboxes](https://www.markdownguide.org/extended-syntax/#task-lists), which look like `- [ ]` when they're yet to be done, and `- [x]` when they're done. Most Markdown rendering engines will display those as something like :black_medium_square: or :ballot_box_with_check:.  

I use the BuJo extension's [Bullet Journal symbols](https://bujo.mihaiconstantin.com/guide/syntax-highlighting.html#symbols) to indicate the status of these inline tasks, with two small differences in interpretation.  

To my mind, "dropped" is ambiguous. I prefer a clear distinction between "oops, I didn't do this" and "This was intentionally cancelled (whether by me or someone else)." Second, I see events as types of actions. After all, I do have to either attend them or not! So I don't use `- [<]` to mean "migrated backward". Intead, it means "intentionally not done." (I plan to eventually change to just using `-[o]` and editing the styles, but at the moment, editing the styles for this one notation seems to be broken.)  

## Task Notes  

With Dendron, task notes can display extra information in various views. This information lives in the YAML header of a note.  

As of 2022-10, I've been using two naming patterns to extend these features of Dendron. Since Dendron uses hierarchical naming conventions to create "nodes," I use `tp` and `ta` to indicate `tasks-project` and `tasks-archive`.  

## Other Relevant Notes  

[all my notes on Dendron](https://www.ryanpatrickrandall.com/notes/Note-taking/Dendron/)  