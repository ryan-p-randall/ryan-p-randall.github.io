---
permalink: /featured-pages/
title: "Featured Pages"
---

Several Pages Galore

<div style="display: grid; grid-gap: 1em; grid-template-columns: repeat(2, 0.5fr); margin-bottom: 1em;">
    <div class="backlink-box">
        <a aria-describedby="blips-desc" href="{{ site.url }}/blips/">Blips</a><br>
        <div><span id="blips-desc">Hyperlocal microblogging, if you will.</span></div>
    </div>
    <div class="backlink-box">
        <a aria-describedby="booksmarks-desc" href="{{ site.url }}/bookmarks/">Bookmarks</a><br>
        <div><span id="bookmarks-desc">Bookmarks I'd like to share.</span></div>
    </div>
    <div class="backlink-box">
        <a aria-describedby="colophone-desc" href="{{ site.url }}/colophon/">Colophon</a><br>
        <div><span id="colophon-desc">Info on how I make this site.</span></div>
    </div>
    <div class="backlink-box">
        <a aria-describedby="elsewhere-desc" href="{{ site.url }}/elsewhere/">Elsewhere</a><br>
        <div><span id="elsewhere-desc">Other places you can find me online.</span></div>
    </div>
    <div class="backlink-box">
        <a aria-describedby="now-desc" href="{{ site.url }}/now/">Now</a><br>
        <div><span id="now-desc">Some things I'm currently doing.</span></div>
    </div>
    <div class="backlink-box">
        <a aria-describedby="reading-desc" href="{{ site.url }}/reading/">Reading</a><br>
        <div><span id="reading-desc">What I'm reading at the moment.</span></div>
    </div>
    <div class="backlink-box">
        <a aria-describedby="uses-desc" href="{{ site.url }}/uses/">Uses</a><br>
        <div><span id="uses-desc">Some apps and other things I use.</span></div>
    </div>
    <div class="backlink-box">
        <a aria-describedby="postroll-desc" href="{{ site.url }}/postroll/">Postroll</a><br>
        <div><span id="postroll-desc">Other people's blog posts you might also enjoy reading.</span></div>
    </div>
<!--    <div class="backlink-box">
        <a aria-describedby="ways-desc" href="{{ site.url }}/ways/">Ways</a><br>
        <div><span id="ways-desc">Ways I do things (and you might too).</span></div>
    </div>
-->
<!-- 
    <div class="backlink-box">
        <a aria-describedby="PAGE-desc" href="{{ site.url }}/…/"></a><br>
        <div><span id="PAGE-desc"></span></div>
    </div>
-->
    {% comment %}{% assign featured_pages = site.pages | where: 'featured_pages','true' %}
    {% for page in featured_pages %}
    {% endfor %}
    <div class="backlink-box">
        <a href="{{ page.url }}">{{ page.title }}</a><br>
        <!-- <a class="internal-link"
            href="{{ site.baseurl }}{{ backlink.url }}{%- if site.use_html_extension -%}.html{%- endif -%}">{{
            backlink.title }}</a><br> -->
        <div style="font-size: 0.9em">{{ page.quip | markdownify | truncatewords: 20 }}</div> <!-- initially was backlink.excerpt | strip_html | truncatewords: 20 -->
    </div>
    {% endcomment %}
</div>
{% comment %}
{% assign main_pages = site.pages | where: 'main_pages','true' %}
{% for page in main_pages %}
    <div><a class="btn btn--primary btn--large>
<!-- 
  <li >
    <a href="{{ page.url }}">{{ page.title }}</a>
  </li>
-->
{% endfor %}
{% endcomment %}