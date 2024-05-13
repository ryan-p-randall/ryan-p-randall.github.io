---
permalink: /reading/
title: "Reading"
# date: 2023-01-10
# last_modified_at: 2023-02-01
# header: 
#  image: /assets/images/pocket-notebooks.jpg
#  image_description: "ryan's pocket notebooks"
toc: true
---

I've occasionally kept track of what I'm reading on BookWyrm, Goodreads, or similar sites.  

As an ongoing experiment with centralizing things to this site, I'm going to try doing so here as well/instead. I often read multiple books and articles in parallel, so I plan to annotate my progress here.  

I plan to add links to reading notes in my digital garden once I'm done, as a type of review.  

## Currently Reading  

{% assign reading_current = site.notes | where:"current","true" | sort: "date_started" %}
{% if reading_current.size > 0 %}
    {% for item in reading_current reversed %}
<article>
    <h3>
    {% if item.reading-articles %} :page_facing_up:{% endif %}
    {% if item.reading-books %} :book:{% endif %}
    <a href="{{ item.url }}">{{ item.title }}
    </a>{% if item.access == "oa" %} <a href="{{ page.work_link }}">{{ page.work_link_text }}</a><i class="ai ai-open-access" aria-hidden="true"></i><span class="sr-only">open access</span>{% endif %}
    {% if item.access == "paywalled" %} :closed_lock_with_key:{% endif %}</h3>
    <p>By: {{ item.work_author }}<br />
    Started: {{ item.date_started }}<br />
    Amount read: {{ item.progress_current }} of {{ item.progress_max }} pages</p>
    <label for="reading-progress" style="margin-top: -1.4em; margin-bottom: 0em;">Progress:</label><progress id="reading-progress" value="{{ item.progress_current }}" max="{{ item.progress_max }}">{{ item.progress_current }} pages</progress>
</article>
    {% endfor %}
{% else %}
<p>Tell me something to read!</p>
{% endif %}

## My Current Comprehensive Exam Lists  

{% assign reading_current_lists = site.notes | where:"current-list","true" %}
{% if reading_current_lists.size > 0 %}
    {% for item in reading_current_lists %}
<article>
    <h3>
    :books:
    <a href="{{ item.url }}">{{ item.title }}
    </a></h3>
    <!-- <p>By: {{ item.work_author }}<br /> -->
    <p>Started: {{ item.date_started }}<br />
    Amount read: {{ item.progress_current }} of {{ item.progress_max }} works</p>
    <label for="reading-progress" style="margin-top: -1.4em; margin-bottom: 0em;">Progress:</label> <progress id="reading-progress" value="{{ item.progress_current }}" max="{{ item.progress_max }}">{{ item.progress_current }} works</progress>
</article>
    {% endfor %}
{% else %}
<p>Tell me something to read!</p>
{% endif %}

## Previously Read  

{% assign reading_notes_all = site.notes | where:"reading","true" | sort_natural: "title" %}
{% assign reading_notes_by_year = reading_notes_all | where_exp:"item", "item.year_read > 2022" | group_by:"year_read" %}
{% for year in reading_notes_by_year reversed %}
<details open id="{{ year.name }}"><summary><h3 id="{{year.name}}">{{ year.name }}</h3></summary>
<div>
<ul>
{% for item in year.items %}
<li>
    {% if item.reading-articles %} :page_facing_up:{% endif %}
    {% if item.reading-books %} :book:{% endif %}
    <a href="{{ item.url }}">{{ item.title }}</a> by {{ item.work_author }}
    {% if item.access == "oa" %} <a href="{{ page.work_link }}">{{ page.work_link_text }}</a><i class="ai ai-open-access" aria-hidden="true"></i><span class="sr-only">open access</span>{% endif %}
    {% if item.access == "paywalled" %}:closed_lock_with_key:{% endif %}
    {% if item.status == ":seedling:" %}:seedling:{% endif %}{% if item.status == ":herb:" %}:herb:{% endif %}{% if item.status == ":evergreen_tree:" %}:evergreen_tree:{% endif %}<br>
    {{ item.excerpt | markdownify }}
</li>
{% endfor %}
</ul>
</div>
</details>
{% endfor %}
