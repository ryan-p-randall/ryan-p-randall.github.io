---
permalink: /now/
title: "Now"
layout: now
date: 2022-06-28
last_modified_at: 2024-03-19
# header: 
#  image: /assets/images/pocket-notebooks.jpg
#  image_description: "ryan's pocket notebooks"
toc: true
featured_pages: true
---

{% assign now_posts = site.categories.now %}
{{ now_posts.last.content }}

## Right About `/Now`  

This page is inspired by Derek Sivers's [/now](https://sivers.org/nowff) page.  

As of June 2024, I've adopted Derek Kedziora's very clever [dynamic now page](https://derekkedziora.com/blog/dynamic-now-page) approach. This approach uses Jekyll's post category features to display the most recent post as the top content on this page (above the "Right About `/Now`" heading) and create the below links to past updates.  

And as of January 2026, I further adapted Derek Kedziora's Liquid code after realizing that on my site, this page was displaying the content of the oldest Now post rather than the newest.  

Here's that relevant Liquid code, as of 2026-01-31:
{% raw %}
```liquid
{% assign now_posts = site.categories.now %}
{{ now_posts.last.content }}
```
{% endraw %}

## The Long `/Now`  

<ul>
{% for post in site.categories.now reversed %}
    <li><a href="{{ post.url }}">{{ post.title }}</a></li>
{% endfor %}
</ul>
