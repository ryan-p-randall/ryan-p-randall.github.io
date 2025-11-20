---
permalink: /reading/
title: "A Reading Log"
# date: 2023-01-10
# last_modified_at: 2023-02-01
# header: 
#  image: /assets/images/pocket-notebooks.jpg
#  image_description: "ryan's pocket notebooks"
toc: true
featured_pages: true
---

Here's where I track what I've been reading—and occasionally share my public thoughts on works as well.  

As you'll notice, I often read works in parallel. I've done this long before encountering the approach Casey Boyle shares in his […something like a reading ethics…](https://web.archive.org/web/20161026154722/https://caseyboyle.net/2016/01/16/something-like-a-reading-ethics/) ([[casey-boyle-something-like-reading-ethics|my notes]]), but I like his way of thinking about reading enough to highlight it here.  

I'll be heavily prioritizing the [reading lists for my Ph.D. qualifying exams](#my-reading-lists), which I'm aiming to take in October of 2026.  

<!-- currently reading -->

{% assign reading_current = site.notes | where:"current","true" | sort: "date_started" %}
{% if reading_current.size > 0 %}
<details open id="currently-reading"><summary><h2 id="currently-reading">Currently Reading</h2></summary>
<div>
    {% for item in reading_current reversed %}
<article>
    <h3>
    {% if item.reading-articles %} :page_facing_up:{% endif %}
    {% if item.reading-books %} :green_book:{% endif %}
    <a href="{{ item.url }}">{{ item.title }}
    </a>{% if item.access == "oa" %} <a href="{{ page.work_link }}">{{ page.work_link_text }}</a><i class="ai ai-open-access" aria-hidden="true"></i><span class="sr-only">open access</span>{% endif %}
    {% if item.access == "paywalled" %} :closed_lock_with_key:{% endif %}</h3>
    <p>By: {{ item.work_author }}<br />
    <!--
    Started: {{ item.date_started }}<br />
    -->
    Last updated: {{ item.last_modified_at }}<br />
    Amount read: {{ item.progress_current }} of {{ item.progress_max }} pages</p>
    <label for="reading-progress" style="margin-top: -1.4em; margin-bottom: 0em;">Progress:</label><progress id="reading-progress" value="{{ item.progress_current }}" max="{{ item.progress_max }}">{{ item.progress_current }} pages</progress>
</article>
    {% endfor %}
</div>
</details>
{% else %}
<p>Tell me something to read!</p>
{% endif %}

{% comment %}
## My New Version of Reading Lists  

{% include reading_list01-progress-counter.html %}
{% include reading-list-internship-ai-counter.html %}
{% endcomment %}

## My Reading Lists  

<details open id="my-exam-lists"><summary><h3 id="my-exam-lists">My Comprehensive Exam Reading Lists</h3></summary>
<div>
{% comment %}
{% assign reading_current_lists = site.notes | where:"current-list","true" %}
{% if reading_current_lists.size > 0 %}
    {% for item in reading_current_lists %}
<article>
    <h4>
    :books:
    <a href="{{ item.url }}">{{ item.title }}
    </a></h4>
    <!-- <p>By: {{ item.work_author }}<br /> -->
    <p>Started: {{ item.date_started }}<br />
    Last updated: {{ item.last_modified_at }}<br />
    Amount read: {{ item.progress_current }} of {{ item.progress_max }} works</p>
    <label for="reading-progress" style="margin-top: -1.4em; margin-bottom: 0em;">Progress:</label> <progress id="reading-progress" value="{{ item.progress_current }}" max="{{ item.progress_max }}">{{ item.progress_current }} works</progress>
</article>
    {% endfor %}
{% else %}
<p>Tell me something to read!</p>
{% endif %}
{% endcomment %}
<h4><a href="{{ site.baseurl}}/notes/Reading/Lists/exam-list1-topic.html">Exam List 1: Information Control and Making Meaning in Modern/Postmodern Texts
</a></h4>
{% include reading_list01-progress-counter.html %}
<h4><a href="{{ site.baseurl}}/notes/Reading/Lists/exam-list2-field.html">Exam List 2: Mobility, Agency, & Surveillance in 20th & 21st Century American Literature
        </a></h4>
{% include reading_list02-progress-counter.html %}
<h4><a href="{{ site.baseurl}}/notes/Reading/Lists/exam-list3-teaching.html">Exam List 3: Composition and Information Literacy, Pedagogy and Instructional Design
        </a></h4>
{% include reading_list03-progress-counter.html %}
</div>
</details>


{% assign reading_other_lists = site.notes | where:"other-reading-list","true" | where:"current","true" %}
{% if reading_other_lists.size > 0 %}
<details open id="my-other-lists"><summary><h3 id="my-other-lists">My Other Lists</h3></summary>
<div>
    {% for item in reading_other_lists %}
<article>
    <h3>
    :books:
    <a href="{{ item.url }}">{{ item.title }}
    </a></h3>
    <!-- <p>By: {{ item.work_author }}<br /> -->
    <p>Started: {{ item.date_started }}<br />
    Last updated: {{ item.last_modified_at }}<br />
    Amount read: {{ item.progress_current }} of {{ item.progress_max }} works</p>
    <label for="reading-progress" style="margin-top: -1.4em; margin-bottom: 0em;">Progress:</label> <progress id="reading-progress" value="{{ item.progress_current }}" max="{{ item.progress_max }}">{{ item.progress_current }} works</progress>
</article>
    {% endfor %}
</div>
</details>
{% endif %}

## Previously Read  

{% assign reading_notes_all = site.notes | where:"reading","true" | sort_natural: "title" %}
{% assign reading_notes_by_year = reading_notes_all | where_exp:"item", "item.year_read > 2022" | sort: "year_read" | group_by:"year_read" %}
{% for year in reading_notes_by_year reversed %}
{% assign yearly_items_sorted = year.items | sort_natural: "title" %}
<details open id="{{ year.name }}"><summary><h3 id="{{year.name}}">{{ year.name }}</h3></summary>
<div>
<ol>
{% for item in yearly_items_sorted %}
<li>
    {% if item.reading-articles %} :page_facing_up:{% endif %}
    {% if item.reading-books %} :green_book:{% endif %}
    {% if item.list%} :memo:{% endif %}
    <a href="{{ item.url }}">{{ item.title }}</a> by {{ item.work_author }}
    {% if item.access == "oa" %} <a href="{{ page.work_link }}">{{ page.work_link_text }}</a><i class="ai ai-open-access" aria-hidden="true"></i><span class="sr-only">open access</span>{% endif %}
    {% if item.access == "paywalled" %}:closed_lock_with_key:{% endif %}
    {% if item.status == ":seedling:" %}:seedling:{% endif %}{% if item.status == ":herb:" %}:herb:{% endif %}{% if item.status == ":evergreen_tree:" %}:evergreen_tree:{% endif %}<br>
    {{ item.excerpt | markdownify }}
</li>
{% endfor %}
</ol>
</div>
</details>
{% endfor %}