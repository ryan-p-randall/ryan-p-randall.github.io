---
permalink: /watching/
title: "A Watching Log"
date: 2026-02-02
last_modified_at: 2026-02-02
excerpt: "What I've been watching"
# header: 
#  image: /assets/images/pocket-notebooks.jpg
#  image_description: "ryan's pocket notebooks"
toc: true
# featured_pages: true
published: true
---

Here's where I track what I've been watching—and occasionally share my public thoughts, too.

<details id="about-this-watching-log"><summary><h2 id="about-this-watching-log">About This Watching Log</h2></summary>
<div markdown="1">
I first built a reading log system in 2023, when I realized I wanted my own little alternative to corporate-owned platforms. This page is an elaboration of that, for watching.
</div>
</details>

<!-- currently watching -->

{% assign watching_current = site.notes | where:"currently_watching","true" | sort: "year_started" %}
{% if watching_current.size > 0 %}
<details open id="currently-watching"><summary><h2 id="currently-watching">Currently Watching</h2></summary>
<div>
    {% for item in watching_current reversed %}
<article>
    <h3>
    {% if item.movies %} :film_projector:{% endif %}
    {% if item.theater %} :performing_arts:{% endif %}
    {% if item.tv %} :tv:{% endif %}
    <a href="{{ item.url }}">{{ item.title }}
    </a></h3>
    <p>Started on: {{ item.date_started }}<br />
    Last updated: {{ item.last_modified_at }}<br />
    Amount watched: {{ item.progress_current }} of {{ item.progress_max }}</p>
    <label for="watching-progress" style="margin-top: -1.4em; margin-bottom: 0em;">Progress:</label><progress id="watching-progress" value="{{ item.progress_current }}" max="{{ item.progress_max }}">{{ item.progress_current }}</progress>
</article>
    {% endfor %}
</div>
</details>
{% else %}
<p>Tell me something to watch!</p>
{% endif %}

## Previously Watched

{% assign watching_notes_all = site.notes | where:"watching","true" | sort_natural: "title" %}
{% assign watching_notes_by_year = watching_notes_all | where_exp:"item", "item.year_watched > 2000" | sort: "year_watched" | group_by:"year_watched" %}
{% for year in watching_notes_by_year reversed %}
{% assign yearly_items_sorted = year.items | sort_natural: "title" %}
<details open id="{{ year.name }}"><summary><h3 id="{{year.name}}">{{ year.name }}</h3></summary>
<div>
<ol>
{% for item in yearly_items_sorted %}
<li>
    {% if item.movies == true %} :film_projector:{% endif %}
    {% if item.theater == true %} :performing_arts:{% endif %}
    {% if item.tv == true %} :tv:{% endif %}
    <a href="{{ item.url }}">{{ item.title }}</a>
    {% if item.status == ":seedling:" %}:seedling:{% endif %}{% if item.status == ":herb:" %}:herb:{% endif %}{% if item.status == ":evergreen_tree:" %}:evergreen_tree:{% endif %}<br>
    {{ item.excerpt | markdownify }}
</li>
{% endfor %}
</ol>
</div>
</details>
{% endfor %}