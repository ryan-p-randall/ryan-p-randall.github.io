---
title: "Mastodon Settings"
date: 2022-11-20  
last_modified_at: 2023-12-18  
excerpt: "Some suggested settings for Mastodon."
status: ":seedling:"  
published: true
blogged: true
technology: true
technology-social-media: true
---

<div markdown="1">
<span class="audience">Assumed Audience and Scope</span>
This isn't trying to be comprehensive, or even an overview.  

This is just me briefly writing up some notes, as if I were explaining the settings to someone in my family. I'm not checking every setting to see if my recommendation varies from the default. If I remember, I'll probably refine this after a few days. (Today is 2022-11-20.)  
</div>
{: .notice }

Mastodon manages to be simultaneously very customizable and deeply confusing. This isn't helped by some of the default settings funneling you toward rapidly-updating streams, and other choices that don't handle scale nicely.  

Here's a quick rundown of some settings you might consider, especially as you're getting used to things.  

First of all, click on the little "gear," which is probably labelled "Preferences" if you hover over it. This brings us to the "Appearance" part of the settings.  

## Appearance  

### Enable Advanced Web Interface  

If you ever used Tweetdeck, you might be familiar with Twitter's column view rather than a single view. If I recall, back when I started using Mastodon in 2017, this "Advanced" web interface **was the standard view**. Maybe Eugen changed the default to make Mastodon seem less weird… but now that there are so many people on so many servers, you'll probably want to start following hashtags or people via lists.  

If you agree that columns are good, this is the setting you'll want.  

If you don't agree (yet)… well, just remember that this setting exists, okay?  

### Slow Mode  

This's label explains it succinctly: "Hide timeline updates behind a click instead of automatically scrolling the feed."  

Certain timelines—the federated one for most instances, and even the local one for larger servers—will often rush by, updating too quickly to read any particular message. 

### Hide Media Marked as Sensitive  

Mastodon's long had some NSFW corners. Your mileage, workplaces, and levels of embarassment might vary, but I'd recommend making sure that the "Hide media marked as sensitive" is checked and stays checked.  

### Other Options  

I don't check this one, but there is an "Always expand posts marked with content warnings" setting. There's a long-running Discourse about content warnings—which you might instead coceived of as content wrappers or consent widgets—but it's a practice in many servers to treat them as basically expected on any public post, regardless of whether **you** think the content merits a "warning."  

Once you have a very busy feed, you might appreciate a CW-heavy approach, since it makes the CW act like a subject line and "read more" cut on blogs or other social media. But if this strikes you as unnecessary, you can make every post expand by clicking on this setting. That's a large part of the beauty of Mastodon—it hands you more control over what you see, rather than handing it over to some sort of for-profit surveillance capitalist outfit.  

### Save Changes  

Yeah, you'll have to do that. It doesn't automatically keep your settings like some other social media sites.  

## Other (Under Preferences)  

### Opt-out of search engine indexing  

You do you, but I think this is a prudent choice as you're getting used to the ramifications of the different privacy options.  

### Posting Defaults  

**Unlisted** is what I'd recommend here.  

Mastodon allows for three levels of posting (in addition to direct messages, which aren't exactly posts). From most to least permissive, these are Public, Unlisted, and Followers-Only. Public posts can be seen by anyone, and they allow you to use hashtags. Unlisted ones can be seen by everyone, but they're not on public timelines. People will either need to be following you (and viewing their home timelines) or go to your own profile in order to see these. Followers-only are visible only to the accounts you've let follow you.  

If you're going to write a thread, it's a very kind practice to make the first post public, then the subsequent ones unlisted. This makes the first show up in the shared timeline, and then all the rest can be viewed but won't hog more scrolling space. Changing each post's setting to "Unlisted" is precisely the sort of thing I forget when I'm typing, so I've set my default to "Unlisted," and then I change that only when I intentionally want to raise my pixellated voice a bit louder.  

### Public Timelines  

You can filter languages. So many languages! If you're able to read multiple languages, or are trying to learn, it's a really cool feature. I leave this unchecked, since I can kinda-sorta muddle through most Romance languages, and I appreciate the reminder that English isn't the world's default.  

If you do want to use this filter, I'd recommend that you look closely at different languages. For instance, if you can read Spanish (Español) very comfortably, you might also consider leaving aragonés, Català, and perhaps some other related languages checked.  

## Filters  

You can filter tons of things in Mastodon, in refined ways. If you don't want to have to read another "Meta" post (a description often used for a post about Mastodon or the Fediverse), you can whisk them all out of your timelines. You can even set **which** timeline!   

Click on "Add new filter" and start doing Future You some favors!  

## Profile  

### Appearance  

Okay, now that you've set things up to make reading more comfortable, you can start reading the digital room.  

#### Require follow requests  

This is what I do. Mastodon's wild growth means that people are often making multiple accounts… which also means it's a great time to impersonate people. So if you don't want to have just any old person start reading you when you're unguarded, you might want to click this.  

I'd click it now… you can always change this later if you start feeling lonely!  

#### Profile Metadata & Verification  

Since people can have as many Mastodon accounts as they can create, verification is prudent. If you have a website or profile elsewhere, you can add a special code to make Mastodon show this link in green.  

**Please do this** if you can!  

As an example, on my [Humanities Commons profile](https://hcommons.org/members/foureyedsoul/), I copied and pasted the special html link from Mastodon into my About section. The important bit here is the `rel="me"` attribute on the html link.  

Many of the more pleasant "visual" interfaces, such as WordPress or ORCID, currently seem to automatically, silently remove this `rel="me"` from links when you paste them in. So I'd recommend that you use the "code" or "html" view to add the link yourself. If you copy the "Verification" code directly from Mastodon, the only thing you might want to reword is where it says `Mastodon`, right before the closing `</a>` tag.  

For instance, if you are on multiple instances, you might want to differentiate between them. If what you copy and paste starts out as `<a rel="me" href="https://example.social/@nerdcore">Mastodon</a>`, you might instead want to change the last few characters to instead read `Example.social</a>`. Repeat that for each instance you want to verify.  

## My Other Notes on Mastodon  

You might also want to check out:  
- [[Mastodon apps]]  
- [[Mastodon starting points]]  