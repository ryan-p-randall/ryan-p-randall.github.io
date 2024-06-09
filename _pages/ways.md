---
permalink: /ways/
title: "Ways"
layout: single
# last_modified_at:
# header: 
#  image: /assets/images/pocket-notebooks.jpg
#  image_description: "ryan's pocket notebooks"
toc: false
published: false
---

Some ways I currently do things. (A practice inspired by L. Rhodes's [Ways folder](https://destructured.net/practice-ways) convention.)  

{% for post in site.categories.ways %}
    {% include archive-single.html type=page.entries_layout %}
{% endfor %}