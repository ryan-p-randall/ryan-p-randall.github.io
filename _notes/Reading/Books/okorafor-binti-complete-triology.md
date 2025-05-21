---
date: 2025-04-28T22:04:54-6:00
last_modified_at: 2025-05-04
reading: true
reading-books: true
excerpt: "Binti leaves her homeworld for Oomza University and grows in unexpected ways."
status: ':herb:'
published: true
title: 'Binti: The Complete Trilogy'
work_author: 'Nnedi Okorafor'
work_author_sort: "Okorafor, Nnedi"
work_link: 'https://openlibrary.org/books/OL28195511M/Binti'
work_link_text: 'OpenLibrary'
year_read: 2025
date_read: 2025-05-04
date_started: 2025-04-28
current: false # true
progress_current: 358
progress_max: 358
genre: [fiction, book, novel] # fiction novel article practice criticism
reading_list01: true
reading-status: 'finished'
citation: 'Okorafor, Nnedi. <a href="https://openlibrary.org/works/OL19649739W/Binti_The_Complete_Trilogy"><em>Binti: The Complete Trilogy</em></a>. Daw Books, 2020. (358 pp. workUnit1.)'
bib_order: 9
---

This omnibus edition is actually three books, plus a short story.  

{% assign binti_first_page = 1 %}
{% assign binti_last_page = 56 %}
{% assign binti_bsf_first_page = 61 %}
{% assign binti_bsf_last_page = 95 %}
{% assign binti_bh_first_page = 99 %}
{% assign binti_bh_last_page = 204 %}
{% assign binti_btnm_first_page = 209 %}
{% assign binti_btnm_last_page = 358 %}

## Binti

{% assign binti_final_pages_read = 0 %}
{% assign binti_page_range = binti_last_page | minus: binti_first_page | plus: 1 %}

{% if page.progress_current > binti_last_page %}
    {% assign binti_final_pages_read = binti_page_range %}
{% else %}
{% assign binti_final_pages_read = page.progress_current | minus: binti_first_page %}
{% endif %}

<p>Amount read: {{ binti_final_pages_read }} of {{ binti_page_range }} pages</p>
<label for="reading-progress" style="margin-top: -1.4em; margin-bottom: 0em;">Progress:</label> <progress id="reading-progress" value="{{ binti_final_pages_read }}" max="{{ binti_page_range }}">{{ binti_page_range }} pages</progress>

## Binti: Sacred Fire

{% assign binti_bsf_final_pages = 0 %}
{% assign binti_bsf_page_range = binti_bsf_last_page | minus: binti_bsf_first_page | plus: 1 %}

{% if page.progress_current < binti_bsf_first_page %}
    {% assign binti_bsf_final_pages_read = 0 %}
{% elsif page.progress_current >= binti_bsf_last_page %}
    {% assign binti_bsf_final_pages_read = binti_bsf_page_range %}
{% else %}
{% assign binti_bsd_final_pages_read = page.progress_current | minus: binti_bsf_first_page %}
{% endif %}

<p>Amount read: {{ binti_bsf_final_pages_read }} of {{ binti_bsf_page_range }} pages</p>
<label for="reading-progress" style="margin-top: -1.4em; margin-bottom: 0em;">Progress:</label> <progress id="reading-progress" value="{{ binti_bsf_final_pages_read }}" max="{{ binti_bsf_page_range }}">{{ binti_bsf_page_range }} pages</progress>


## Binti: Home

{% assign binti_bh_final_pages = 0 %}
{% assign binti_bh_page_range = binti_bh_last_page | minus: binti_bh_first_page | plus: 1 %}

{% if page.progress_current < binti_bh_first_page %}
    {% assign binti_bh_final_pages_read = 0 %}
{% elsif page.progress_current >= binti_bh_last_page %}
    {% assign binti_bh_final_pages_read = binti_bh_page_range %}
{% else %}
{% assign binti_bh_final_pages_read = page.progress_current | minus: binti_bh_first_page %}
{% endif %}

<p>Amount read: {{ binti_bh_final_pages_read }} of {{ binti_bh_page_range }} pages</p>
<label for="reading-progress" style="margin-top: -1.4em; margin-bottom: 0em;">Progress:</label> <progress id="reading-progress" value="{{ binti_bh_final_pages_read }}" max="{{ binti_bh_page_range }}">{{ binti_bh_page_range }} pages</progress>

## Binti: The Night Masquerade

{% assign binti_btnm_final_pages = 0 %}
{% assign binti_btnm_page_range = binti_btnm_last_page | minus: binti_btnm_first_page | plus: 1 %}

{% if page.progress_current < binti_btnm_first_page %}
    {% assign binti_btnm_final_pages_read = 0 %}
{% elsif page.progress_current >= binti_btnm_last_page %}
    {% assign binti_btnm_final_pages_read = binti_btnm_page_range %}
{% else %}
{% assign binti_btnm_final_pages_read = page.progress_current | minus: binti_btnm_first_page %}
{% endif %}

<p>Amount read: {{ binti_btnm_final_pages_read }} of {{ binti_btnm_page_range }} pages</p>
<label for="reading-progress" style="margin-top: -1.4em; margin-bottom: 0em;">Progress:</label> <progress id="reading-progress" value="{{ binti_btnm_final_pages_read }}" max="{{ binti_btnm_page_range }}">{{ binti_btnm_page_range }} pages</progress>
