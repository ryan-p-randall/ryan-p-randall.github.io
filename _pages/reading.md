---
permalink: /reading/
title: "Reading"
date: 2023-01-10
last_modified_at: 2023-02-01
header: 
  image: /assets/images/pocket-notebooks.jpg
  image_description: "ryan's pocket notebooks"
toc: true
---

I've occasionally kept track of what I'm reading on BookWyrm, Goodreads, or similar sites.  

As an ongoing experiment with centralizing things to this site, I'm going to try doing so here as well/instead. I often read multiple books and articules in parallel, so I plan to annotate my progress here.  

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
        </a></h3>
        <p>By: {{ item.work_author }}<br />
        Started: {{ item.date_started }}</p>
        <label style="margin-top: -1.4em; margin-bottom: 0em;">Amount read:</label> <progress value="{{ item.progress_current }}" max="{{ item.progress_max }}">{{ item.progress_current }} pages</progress>
</article>
    {% endfor %}
{% else %}
<p>Tell me something to read!</p>
{% endif %}

## 2023  

{% assign reading_2023_all = site.notes | where:"year_read","2023" | sort: "date_read" %}
{% if reading_2023_all.size > 0 %}
<ul>
    {% for item in reading_2023_all %}
    <li>{% if item.pinned %}📌 {% endif %}
        {% if item.reading-articles %} :page_facing_up:{% endif %}
        {% if item.reading-books %} :book:{% endif %}
        <a href="{{ item.url }}">{{ item.title }}
            {% if item.status == ":seedling:" %} :seedling:{% endif %}
            {% if item.status == ":herb:" %} :herb:{% endif %}
            {% if item.status == ":evergreen_tree:" %} :evergreen_tree:{% endif %}
        </a><br />
        {{ item.excerpt }}
        <!-- <meta class="p-summary" itemprop="description" content="{{ item.excerpt | markdownify | strip_html | strip_newlines | escape_once }}"> -->
    </li>
    {% endfor %}
</ul>
{% else %}
<p>There's nothing here yet!</p>
{% endif %}
