---
permalink: /blips/
title: "Blips"
layout: single
# last_modified_at:
# header: 
#  image: /assets/images/pocket-notebooks.jpg
#  image_description: "ryan's pocket notebooks"
toc: false
featured_pages: true
quip: "Microblogging, right here."
---

Blog posts, but smaller. "Microblogging," if you will.  

{% for post in site.categories.blips reversed %}
    {% include archive-single.html type=page.entries_layout %}
{% endfor %}